#!/usr/bin/env bash

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    echo "Usage:"
    echo "  source ${BASH_SOURCE[0]}"
    exit 1
fi


ENV_PATH=${BASH_SOURCE[0]}

ASMXOM_HOME=$(dirname "$ENV_PATH")
export ASMXOM_HOME=$(realpath "$ASMXOM_HOME")

export GCC_PATH="$ASMXOM_HOME/gcc-15.2.0/build/bin/gcc"
export GXX_PATH="$ASMXOM_HOME/gcc-15.2.0/build/bin/g++"

export GCC_WRAPPER_PATH="$ASMXOM_HOME/gcc-wrapper/gcc"
export GXX_WRAPPER_PATH="$ASMXOM_HOME/gcc-wrapper/g++"

# All output will be saved to directory "workspace".
mkdir -p "$ASMXOM_HOME/workspace"
mkdir -p "$ASMXOM_HOME/workspace/compiler-info"
mkdir -p "$ASMXOM_HOME/workspace/data-info"
mkdir -p "$ASMXOM_HOME/workspace/output"
mkdir -p "$ASMXOM_HOME/workspace/projects"

echo "  ASMXOM_HOME           = $ASMXOM_HOME"
echo "  GCC_PATH              = $GCC_PATH"
echo "  GXX_PATH              = $GXX_PATH"
echo "  GCC_WRAPPER_PATH      = $GCC_WRAPPER_PATH"
echo "  GXX_WRAPPER_PATH      = $GXX_WRAPPER_PATH"

