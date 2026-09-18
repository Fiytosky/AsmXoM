#!/usr/bin/env bash

set -Eeuo pipefail

export ASMXOM_HOME="${ASMXOM_HOME:-/AsmXoM}"
cd -- "$ASMXOM_HOME"

# Idempotent: the prebuilt image only validates/skips the toolchain, while the
# runtime-build image performs the complete build on its first container run.
/usr/local/bin/asmxom-build

# env.sh is intentionally sourced in this process.  The exported values are
# inherited by the shell or command executed below.
# shellcheck disable=SC1091
source "$ASMXOM_HOME/env.sh"

if (( $# == 0 )); then
    set -- bash
fi

exec "$@"

