#!/usr/bin/env bash

# ================= Configuration =================
# base dir
BASE_ROOT="$ASMXOM_HOME"

# workspace
DATA_INFO_DIR="$BASE_ROOT/workspace/data-info"
OUTPUT_DIR="$BASE_ROOT/workspace/output"

# compiler
CC="$GCC_PATH"
CXX="$GXX_PATH"

LD_SCRIPT="$BASE_ROOT/gcc-wrapper/ldscript.ld"

EXTRA_CFLAGS=""
EXTRA_CXXFLAGS=""
EXTRA_LDFLAGS=""
EXTRA_ASM_FLAGS=""

# python
DATA_PY="$BASE_ROOT/script/parse_xom_info.py"

JOBS="$(nproc 2>/dev/null || printf '1')"

# ================= Helper functions =================
# log
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'  # Bold yellow for warnings and dry runs
BLUE='\033[1;34m'    # Bold blue for step headings
NC='\033[0m'         # Reset color

STEP_ID=1
log_step() {
    echo -e "${BLUE}========================================${NC}"
    echo -e "${BLUE}[Step $STEP_ID] $1${NC}"
    echo -e "${BLUE}========================================${NC}"
    ((STEP_ID++))
}

log_error() {
    echo -e "${RED}[Error] $1${NC}"
}

log_success() {
    echo -e "${GREEN}[Success] $1${NC}"
}

log_warn() {
    echo -e "${YELLOW}[Warning] $1${NC}"
}

# ================= Embedded Data Identification =================
log_step "Check openssl-3.3.5 ..."
if [[ -d "openssl-3.3.5" ]]; then
    log_success "[+] Find openssl-3.3.5 in $PWD"
else
    log_success "[+] Extract openssl-3.3.5.tar.gz"
    tar -xf openssl-3.3.5.tar.gz
fi

# clean tmp files
rm -f $DATA_INFO_DIR/data_*.txt
rm -f $DATA_INFO_DIR/ld_*.txt

log_step "Configuring openssl-3.3.5 ..."
CONFIG_LOG="config_process.log"
EXTRA_CFLAGS="-O0 -Wa,--keep-locals -Wa,--dsplit -save-temps=obj"
EXTRA_LDFLAGS="-Wl,--dsplit -Wl,-T,$LD_SCRIPT"

cd openssl-3.3.5
rm -rf build
mkdir -p build
cd build
../Configure no-shared --prefix="$PWD" CC="$CC" CFLAGS="$EXTRA_CFLAGS -fPIC" LDFLAGS="$EXTRA_LDFLAGS -fPIC" > "$CONFIG_LOG" 2>&1

if [ $? -eq 0 ]; then
    log_success "[+] Configuration Successful!"
    rm -f "$CONFIG_LOG"
else
    log_error "Configuration Failed!"
    echo "================ Error Log (Last 20 lines) ================"
    tail -n 20 "$CONFIG_LOG"  # Show only the last 20 lines of error output.
    echo "==========================================================="
    echo "Full log available at: $(pwd)/$CONFIG_LOG"
    exit 1
fi

log_step "Compiling openssl-3.3.5 with -j$JOBS ..."
BUILD_LOG="build_process.log"
make -j"$JOBS" V=1 > "$BUILD_LOG" 2>&1

if [ $? -eq 0 ]; then
    log_success "[+] Compilation Successful!"
    rm -f "$BUILD_LOG"
else 
    log_error "Compilation Failed!"
    echo "================ Error Log (Last 20 lines) ================"
    tail -n 20 "$BUILD_LOG"  # Show only the last 20 lines of error output.
    echo "==========================================================="
    echo "Full log available at: $(pwd)/$BUILD_LOG"
    exit 1
fi

log_step "Analysis the embedded data in openssl-3.3.5 ..."
find "$DATA_INFO_DIR" -maxdepth 1 -type f -name "ld_*" | while read -r ldlog_file_path; do
    ldlog_file=$(basename "$ldlog_file_path")
    temp_name="${ldlog_file#ld_}"
    temp_name="${temp_name%.txt}"
    target_name="${temp_name%_*}"

    if [ -z "$target_name" ] || [ "$target_name" == "$temp_name" ]; then
        # log_warn "Skip Invalid filename format: $ldlog_file"
        continue
    fi

    if echo "$target_name" | grep -iqE "conftest|test|tests|example|examples|demo|check|a.out"; then
        # log_warn "Ignored test/example artifact (matched 'conftest' or 'test'): $target_name_path"
        continue
    fi

    found_path=$(find . -type f -name "$target_name" -print -quit)
    if [ -z "$found_path" ]; then
        # log_warn "Target file '$target_name' NOT found in build directory."
        continue
    fi

    target_name_path=$(realpath "$found_path")

    if echo "$target_name_path" | grep -iqE "conftest|test|tests|example|examples|demo|check"; then
        # log_warn "Ignored test/example artifact (matched 'conftest' or 'test'): $target_name_path"
        continue
    fi

    ldlog_abs_path=$(realpath "$ldlog_file_path")
    
    FINAL_LOG_FILE="${OUTPUT_DIR}/${PROJECT_FULL}_${target_name}.log"
    echo "[+] Processing $target_name... the log will be written in $FINAL_LOG_FILE"
    python3.10 "$DATA_PY" "$target_name_path" --section .xomdata --ldlog "$ldlog_abs_path" 2>&1 | tee "$FINAL_LOG_FILE"
done
