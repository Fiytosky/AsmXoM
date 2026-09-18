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

MPK_SO="$BASE_ROOT/xom/libmpk_xom.so"
PROBE_SO="$BASE_ROOT/xom/libleak_probe.so"
NO_PROBE_SO="$BASE_ROOT/xom/libleak_probe_native.so"
XOM_RUN="$BASE_ROOT/xom/xom_run"

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

# ================= Code Disclosure Test =================
log_step "Simulate attack payload ..."
cd "$BASE_ROOT/xom"
gcc -O2 -g -fPIC -shared -Wall -Wextra -Werror -Wl,-soname,libmpk_xom.so -o libmpk_xom.so mpk_xom.c -ldl
gcc -O2 -g -fPIC -shared -Wall -Wextra -Werror -Wl,-z,now -Wl,-soname,libleak_probe.so -o libleak_probe.so leak_probe.c -L. -Wl,--no-as-needed -lmpk_xom -Wl,--as-needed -ldl -Wl,-rpath,'$ORIGIN'
gcc -O2 -g -fPIC -shared -Wall -Wextra -Werror -Wl,-z,now -o libleak_probe_native.so leak_probe.c -ldl

if [ $? -eq 0 ]; then
    log_success "[+] Compiled $PROBE_SO"
else
    log_error "Compilation Failed!"
    exit 1
fi

# clean tmp files
rm -f $DATA_INFO_DIR/data_*.txt
rm -f $DATA_INFO_DIR/ld_*.txt

log_step "Build openssl-3.3.5 ..."
CONFIG_LOG="config_process.log"
EXTRA_CFLAGS="-O0 -Wa,--keep-locals -Wa,--dsplit -save-temps=obj"
EXTRA_LDFLAGS="-Wl,--dsplit -Wl,-T,$LD_SCRIPT"

cd "$BASE_ROOT/evaluation"
cd openssl-3.3.5
rm -rf build
mkdir -p build
cd build
../Configure no-shared --prefix="$PWD" CC="$CC" CFLAGS="$EXTRA_CFLAGS -fPIC" LDFLAGS="$EXTRA_LDFLAGS -fPIC" > "$CONFIG_LOG" 2>&1

if [ $? -eq 0 ]; then
    rm -f "$CONFIG_LOG"
else
    log_error "Configuration Failed!"
    echo "================ Error Log (Last 20 lines) ================"
    tail -n 20 "$CONFIG_LOG"  # Show only the last 20 lines of error output.
    echo "==========================================================="
    echo "Full log available at: $(pwd)/$CONFIG_LOG"
    exit 1
fi

BUILD_LOG="build_process.log"
make -j"$JOBS" V=1 > "$BUILD_LOG" 2>&1

if [ $? -eq 0 ]; then
    rm -f "$BUILD_LOG"
else 
    log_error "Compilation Failed!"
    echo "================ Error Log (Last 20 lines) ================"
    tail -n 20 "$BUILD_LOG"  # Show only the last 20 lines of error output.
    echo "==========================================================="
    echo "Full log available at: $(pwd)/$BUILD_LOG"
    exit 1
fi

log_success "[+] Compilation Successful!"

log_step "Run openssl-3.3.5 in XoM environment ..."
LD_PRELOAD="$PROBE_SO" ./apps/openssl speed sha1

log_step "Run openssl-3.3.5 in non-XoM environment ..."
LD_PRELOAD="$NO_PROBE_SO" ./apps/openssl speed sha1
