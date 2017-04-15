#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=/home/blackmesa/Scrivania/Android/Sorgenti/Toolchain/google-arm-linux-androideabi-4.9/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
export LOCALVERSION=-Espheni_Kernel_v1

mkdir output

make -C $(pwd) O=output msm8974_sec_defconfig VARIANT_DEFCONFIG=msm8974pro_sec_klte_eur_defconfig SELINUX_DEFCONFIG=selinux_defconfig

make -j64 -C $(pwd) O=output

cp output/arch/arm/boot/zImage $(pwd)/arch/arm/boot/zImage
