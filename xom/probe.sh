#!/usr/bin/env bash

set +e

XOM_PATH=${BASH_SOURCE[0]}
XOM_HOME=$(dirname "$XOM_PATH")
XOM_HOME=$(realpath "$XOM_HOME")

MPK_XOM_SCOPE=main \
MPK_XOM_VERBOSE=1 \
LD_PRELOAD="$XOM_HOME/libmpk_xom.so" \
"$XOM_HOME/probe" read

echo "exit code: $?"
