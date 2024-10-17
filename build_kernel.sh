#!/bin/bash

export PATH=/rsuntk/env/clang-11/bin:$PATH
export CROSS_COMPILE=/rsuntk/env/gcc-6.4/bin/aarch64-linux-gnu-
export CC=/rsuntk/env/clang-11/bin/clang
export CLANG_TRIPLE=aarch64-linux-gnu-
export ARCH=arm64
export ANDROID_MAJOR_VERSION=u

make -C $(pwd) O=$(pwd)/out KCFLAGS=-w CONFIG_SECTION_MISMATCH_WARN_ONLY=y LLVM=1 LLVM_IAS=1 rsuntk_defconfig
make -C $(pwd) O=$(pwd)/out KCFLAGS=-w CONFIG_SECTION_MISMATCH_WARN_ONLY=y LLVM=1 LLVM_IAS=1 -j2