#!/usr/bin/env bash

set -Eeuo pipefail

readonly GCC_VERSION="15.2.0"
readonly GCC_ARCHIVE="gcc-${GCC_VERSION}.tar.xz"
readonly GCC_URL="https://gcc.gnu.org/pub/gcc/releases/gcc-${GCC_VERSION}/${GCC_ARCHIVE}"
readonly GCC_SHA512="89047a2e07bd9da265b507b516ed3635adb17491c7f4f67cf090f0bd5b3fc7f2ee6e4cc4008beef7ca884b6b71dffe2bb652b21f01a702e17b468cca2d10b2de"

readonly ASMXOM_ROOT="${ASMXOM_HOME:-/AsmXoM}"
readonly BUILD_ROOT="${ASMXOM_BUILD_ROOT:-/tmp/asmxom-build}"
readonly BINUTILS_SOURCE="${ASMXOM_ROOT}/binutils-2.44"
readonly BINUTILS_PREFIX="${BINUTILS_SOURCE}/build"
readonly BINUTILS_OBJECTS="${BUILD_ROOT}/binutils-2.44"
readonly GCC_SOURCE="${ASMXOM_ROOT}/gcc-${GCC_VERSION}"
readonly GCC_PREFIX="${GCC_SOURCE}/build"
readonly GCC_OBJECTS="${BUILD_ROOT}/gcc-${GCC_VERSION}"

readonly AS_PATH="${BINUTILS_PREFIX}/bin/as"
readonly LD_PATH="${BINUTILS_PREFIX}/bin/ld"
readonly REAL_GCC="${GCC_PREFIX}/bin/gcc"
readonly REAL_GXX="${GCC_PREFIX}/bin/g++"

log() {
    printf '[AsmXoM] %s\n' "$*"
}

fail() {
    printf '[AsmXoM] ERROR: %s\n' "$*" >&2
    exit 1
}

on_error() {
    local exit_code=$?
    printf '[AsmXoM] ERROR: build failed near line %s (exit %s)\n' \
        "${BASH_LINENO[0]:-unknown}" "$exit_code" >&2
    exit "$exit_code"
}
trap on_error ERR

detect_jobs() {
    local jobs="${ASMXOM_JOBS:-}"
    local detected

    if [[ -z "$jobs" ]]; then
        detected="$(nproc 2>/dev/null || printf '1')"
        # GCC can consume substantial RAM per job.  Four is a safer default
        # for a portable image; callers can explicitly raise ASMXOM_JOBS.
        if (( detected > 4 )); then
            jobs=4
        else
            jobs="$detected"
        fi
    fi

    [[ "$jobs" =~ ^[1-9][0-9]*$ ]] \
        || fail "ASMXOM_JOBS must be a positive integer (received: $jobs)"
    printf '%s\n' "$jobs"
}

check_architecture() {
    local architecture
    architecture="$(uname -m)"
    case "$architecture" in
        x86_64|amd64)
            ;;
        *)
            fail "AsmXoM targets x86-64; current architecture is $architecture"
            ;;
    esac
}

binutils_ready() {
    local version

    [[ -x "$AS_PATH" && -x "$LD_PATH" ]] || return 1
    version="$("$AS_PATH" --version 2>/dev/null)" || return 1
    [[ "${version%%$'\n'*}" == *'2.44'* ]]
}

gcc_ready() {
    [[ -x "$REAL_GCC" && -x "$REAL_GXX" ]] \
        && [[ "$("$REAL_GCC" -dumpfullversion 2>/dev/null)" == "$GCC_VERSION" ]]
}

support_artifacts_ready() {
    [[ -s "${ASMXOM_ROOT}/gcc-wrapper/findasm.so" \
        && -s "${ASMXOM_ROOT}/xom/libmpk_xom.so" \
        && -s "${ASMXOM_ROOT}/xom/libleak_probe.so" \
        && -s "${ASMXOM_ROOT}/xom/libleak_probe_native.so" \
        && -x "${ASMXOM_ROOT}/xom/probe" ]]
}

build_binutils() {
    [[ -x "${BINUTILS_SOURCE}/configure" ]] \
        || fail "missing Binutils source: ${BINUTILS_SOURCE}"

    log "Building modified GNU Binutils 2.44 with ${JOBS} job(s)"
    rm -rf -- "$BINUTILS_OBJECTS" "$BINUTILS_PREFIX"
    mkdir -p -- "$BINUTILS_OBJECTS" "$BINUTILS_PREFIX"

    (
        cd -- "$BINUTILS_OBJECTS"
        CONFIG_SHELL=/bin/bash "${BINUTILS_SOURCE}/configure" \
            --prefix="$BINUTILS_PREFIX" \
            --disable-nls \
            --disable-werror
        make -j"$JOBS"
        make install
    )

    binutils_ready || fail "Binutils installation validation failed"

    if [[ "${ASMXOM_KEEP_BUILD_DIRS:-0}" != "1" ]]; then
        rm -rf -- "$BINUTILS_OBJECTS"
    fi
    log "Binutils installed in ${BINUTILS_PREFIX}"
}

download_gcc() {
    local temporary_directory
    local archive_path

    temporary_directory="$(mktemp -d)"
    archive_path="${temporary_directory}/${GCC_ARCHIVE}"

    log "Downloading ${GCC_URL}"
    curl --fail --location --retry 5 --retry-delay 3 \
        --output "$archive_path" "$GCC_URL"

    (
        cd -- "$temporary_directory"
        printf '%s  %s\n' "$GCC_SHA512" "$GCC_ARCHIVE" | sha512sum --check --strict -
    )

    rm -rf -- "$GCC_SOURCE"
    tar -xJf "$archive_path" -C "$ASMXOM_ROOT"
    rm -rf -- "$temporary_directory"
}

build_gcc() {
    download_gcc

    log "Building GCC ${GCC_VERSION} with ${JOBS} job(s)"
    rm -rf -- "$GCC_OBJECTS" "$GCC_PREFIX"
    mkdir -p -- "$GCC_OBJECTS" "$GCC_PREFIX"

    (
        cd -- "$GCC_OBJECTS"
        CONFIG_SHELL=/bin/bash "${GCC_SOURCE}/configure" \
            --prefix="$GCC_PREFIX" \
            --enable-languages=c,c++ \
            --with-as="$AS_PATH" \
            --with-ld="$LD_PATH" \
            --with-system-zlib \
            --disable-multilib \
            --disable-nls
        make -j"$JOBS"
        make install
    )

    gcc_ready || fail "GCC installation validation failed"

    if [[ "${ASMXOM_KEEP_BUILD_DIRS:-0}" != "1" ]]; then
        rm -rf -- "$GCC_OBJECTS"
    fi
    log "GCC installed in ${GCC_PREFIX}"
}

build_support_artifacts() {
    local plugin_include

    log "Building GCC plugin and XoM support binaries"
    plugin_include="$("$REAL_GCC" -print-file-name=plugin)/include"
    [[ -f "${plugin_include}/gcc-plugin.h" ]] \
        || fail "GCC plugin headers not found in ${plugin_include}"

    "$REAL_GXX" \
        -std=gnu++17 -O2 -fPIC -fno-rtti -shared \
        -I"$plugin_include" \
        "${ASMXOM_ROOT}/gcc-wrapper/findasm.cc" \
        -o "${ASMXOM_ROOT}/gcc-wrapper/findasm.so"

    "$REAL_GCC" \
        -O2 -g -fPIC -shared -Wall -Wextra -Werror \
        -Wl,-soname,libmpk_xom.so \
        -o "${ASMXOM_ROOT}/xom/libmpk_xom.so" \
        "${ASMXOM_ROOT}/xom/mpk_xom.c" -ldl

    "$REAL_GCC" \
        -O2 -g -fPIC -shared -Wall -Wextra -Werror -Wl,-z,now \
        -Wl,-soname,libleak_probe.so \
        -o "${ASMXOM_ROOT}/xom/libleak_probe.so" \
        "${ASMXOM_ROOT}/xom/leak_probe.c" \
        -L"${ASMXOM_ROOT}/xom" -Wl,--no-as-needed -lmpk_xom \
        -Wl,--as-needed -ldl -Wl,-rpath,'$ORIGIN'

    "$REAL_GCC" \
        -O2 -g -fPIC -shared -Wall -Wextra -Werror -Wl,-z,now \
        -o "${ASMXOM_ROOT}/xom/libleak_probe_native.so" \
        "${ASMXOM_ROOT}/xom/leak_probe.c" -ldl

    "$REAL_GCC" \
        -O2 -g -fPIC -Wall -Wextra -Werror \
        -o "${ASMXOM_ROOT}/xom/probe" \
        "${ASMXOM_ROOT}/xom/probe.c"
}

check_architecture
readonly JOBS="$(detect_jobs)"

mkdir -p -- "$ASMXOM_ROOT"

if binutils_ready; then
    log "Binutils 2.44 is already installed; skipping"
else
    build_binutils
fi

if gcc_ready; then
    log "GCC ${GCC_VERSION} is already installed; skipping"
else
    build_gcc
fi

if support_artifacts_ready; then
    log "GCC plugin and XoM support binaries are already built; skipping"
else
    build_support_artifacts
fi

log "Toolchain is ready"
