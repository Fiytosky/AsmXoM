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

# ================= 嵌入数据识别 =================
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

log_step "Running standard tests (openssl-3.3.5) ..."
env -u http_proxy -u HTTP_PROXY -u https_proxy -u HTTPS_PROXY -u all_proxy -u ALL_PROXY make test