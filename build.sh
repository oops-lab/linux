#!/bin/bash
set -e

mkdir output

cd linux
make sunxi_arm64_defconfig ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-
make Image dtbs ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- -j16

cp -f arch/arm64/boot/Image ../output
cp -f arch/arm64/boot/dts/allwinner/sun50i-h5-nanopi-neo2.dtb ../output

cd ..
