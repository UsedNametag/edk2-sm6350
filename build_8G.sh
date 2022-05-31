#!/bin/bash
# based on the instructions from edk2-platform
set -e
. build_common.sh
# not actually GCC5; it's GCC7 on Ubuntu 18.04.
GCC5_AARCH64_PREFIX=aarch64-linux-gnu- build -s -n 0 -a AARCH64 -t GCC5 -p SM6350/SM6350_8G.dsc -b RELEASE
gzip -c < workspace/Build/SM6350_8G/RELEASE_GCC5/FV/SM6350_UEFI.fd >uefi.img
cat SM6350.dtb >>uefi.img
echo > ramdisk
abootimg --create boot-SM6350_8G.img -k uefi.img -r ramdisk