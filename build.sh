#!/usr/bin/env bash

# This script is used to build the AsmXoM prototype.
BUILD_PATH=${BASH_SOURCE[0]}

ASMXOM_ROOT=$(dirname "$BUILD_PATH")
ASMXOM_ROOT=$(realpath "$ASMXOM_ROOT")

echo $ASMXOM_ROOT

# 1. Compile Binutils-2.44
echo "[+] STEP1: Compile Binutils-2.44"
cd binutils-2.44
rm -rf build
make -p build && cd build
../configure --prefix="$ASMXOM_ROOT/binutils-2.44/build"
make -j32
echo "[+] --> Compiled Binutils-2.44"
echo "[+] STEP2: Install Binutils-2.44"
make install
echo "[+] --> Installed Binutils-2.44 in $ASMXOM_ROOT/binutils-2.44/build"

AS_PATH="$ASMXOM_ROOT/binutils-2.44/build/bin/as"
LD_PATH="$ASMXOM_ROOT/binutils-2.44/build/bin/ld"

# 2. Compile GCC-15.2.0
echo "[+] STEP3: Compile GCC-15.2.0"
wget https://ftp.gnu.org/pub/gnu/gcc/gcc-15.2.0/gcc-15.2.0.tar.gz
tar -xf gcc-15.2.0.tar.gz
rm gcc-15.2.0.tar.gz
cd gcc-15.2.0
mkdir -p build && cd build
../configure --prefix="$ASMXOM_ROOT/gcc-15.2.0/build" --enable-languages=c,c++ --with-as="$AS_PATH" --with-ld="$LD_PATH" --disable-multilib --disable-nls
make -j32
echo "[+] --> Compiled GCC-15.2.0"
echo "[+] STEP4: Install GCC-15.2.0"
make install
echo "[+] --> Installed gcc in $ASMXOM_ROOT/gcc-15.2.0/build/bin/gcc"
echo "[+] --> Installed g++ in $ASMXOM_ROOT/gcc-15.2.0/build/bin/g++"



