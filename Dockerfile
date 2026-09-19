FROM ubuntu:22.04 AS asmxom-base

ARG DEBIAN_FRONTEND=noninteractive

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Ubuntu 22.04 provides Python 3.10, which is referenced explicitly by the
# evaluation scripts.  Keep the development packages in the image because
# users compile both the toolchain and the evaluated projects at run time.
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        autoconf \
        automake \
        bash \
        bc \
        binutils \
        bison \
        build-essential \
        bzip2 \
        ca-certificates \
        cmake \
        coreutils \
        curl \
        dejagnu \
        expect \
        file \
        flex \
        gawk \
        gettext \
        git \
        golang-go \
        gperf \
        gzip \
        libgmp-dev \
        libgpg-error-dev \
        libidn2-dev \
        libisl-dev \
        libmpc-dev \
        libmpfr-dev \
        libssl-dev \
        libtasn1-6-dev \
        libtool \
        libtool-bin \
        libunistring-dev \
        libzstd-dev \
        m4 \
        make \
        ninja-build \
        patch \
        perl \
        pkg-config \
        python3 \
        python3-pip \
        python3-venv \
        rsync \
        tar \
        texinfo \
        unzip \
        wget \
        xz-utils \
        zlib1g-dev \
    && python3 -m pip install --no-cache-dir pyelftools==0.31 \
    && rm -rf /var/lib/apt/lists/*

ENV ASMXOM_HOME=/AsmXoM \
    GCC_PATH=/AsmXoM/gcc-15.2.0/build/bin/gcc \
    GXX_PATH=/AsmXoM/gcc-15.2.0/build/bin/g++ \
    GCC_WRAPPER_PATH=/AsmXoM/gcc-wrapper/gcc \
    GXX_WRAPPER_PATH=/AsmXoM/gcc-wrapper/g++ \
    PATH=/AsmXoM/gcc-15.2.0/build/bin:/AsmXoM/binutils-2.44/build/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

WORKDIR /AsmXoM

# Copy only the distributable project files.  Generated host binaries and
# build directories are filtered by .dockerignore and rebuilt in the image.
COPY binutils-2.44/ /AsmXoM/binutils-2.44/
COPY env.sh LICENSE README.md /AsmXoM/
COPY evaluation/ /AsmXoM/evaluation/
COPY gcc-wrapper/ /AsmXoM/gcc-wrapper/
COPY script/ /AsmXoM/script/
COPY xom/ /AsmXoM/xom/
COPY docker/asmxom-build.sh /usr/local/bin/asmxom-build
COPY docker/docker-entrypoint.sh /usr/local/bin/asmxom-entrypoint

RUN chmod 0755 \
        /usr/local/bin/asmxom-build \
        /usr/local/bin/asmxom-entrypoint \
        /AsmXoM/env.sh \
        /AsmXoM/gcc-wrapper/gcc \
        /AsmXoM/gcc-wrapper/g++ \
        /AsmXoM/xom/xom_run \
    && find /AsmXoM/evaluation /AsmXoM/script /AsmXoM/xom \
        -type f \( -name '*.sh' -o -name '*.py' \) \
        -exec chmod 0755 {} +

ENTRYPOINT ["/usr/local/bin/asmxom-entrypoint"]
CMD ["bash"]

# Build this target when compilation must happen on the first container start:
#   docker build --target runtime-build -t asmxom:runtime-build .
FROM asmxom-base AS runtime-build

# The default final image is prebuilt.  Its entrypoint still runs the same
# idempotent check, but starts immediately because all artifacts already exist.
FROM asmxom-base AS ready
ARG ASMXOM_JOBS=4
RUN ASMXOM_JOBS="$ASMXOM_JOBS" /usr/local/bin/asmxom-build
