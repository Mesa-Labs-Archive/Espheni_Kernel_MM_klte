#!/bin/bash
# Coded by BlackMesa @EspheniKernel

clear
echo "------------------------------------------"
echo "EspheniKernel Build Script"
echo "Coded by BlackMesa"
echo "------------------------------------------"
PS3='Please select the kernel variant you want to build: '
options=("klte" "klteduos" "kltespr" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "klte")
            clear
            echo "------------------------------------------"
            echo "Building kernel for klte..."
            echo "------------------------------------------"
            echo " "
            export ARCH=arm
            export CROSS_COMPILE=/home/blackmesa/Scrivania/Android/Sorgenti/Toolchain/UBERTC-arm-linux-androideabi-4.9-326a1d868723/bin/arm-linux-androideabi-
            export LOCALVERSION=-Espheni_Kernel_v1-klte
			rm -r -f output
			mkdir output
			make -C $(pwd) O=output msm8974_sec_defconfig VARIANT_DEFCONFIG=msm8974pro_sec_klte_eur_defconfig SELINUX_DEFCONFIG=selinux_defconfig
			make -j64 -C $(pwd) O=output
			cp output/arch/arm/boot/zImage $(pwd)/arch/arm/boot/zImage
            echo " "
            echo "------------------------------------------"
            echo "Kernel build finished."
            echo "Image is located in /arch/arm/boot/zImage."
            echo "Press any key for end the script."
            echo "------------------------------------------"
            read -n1 -r key
            break
			;;
        "klteduos")
            clear
            echo "------------------------------------------"
            echo "Building kernel for klteduos..."
            echo "------------------------------------------"
            echo " "
            export ARCH=arm
            export CROSS_COMPILE=/home/blackmesa/Scrivania/Android/Sorgenti/Toolchain/UBERTC-arm-linux-androideabi-4.9-326a1d868723/bin/arm-linux-androideabi-
            export LOCALVERSION=-Espheni_Kernel_v1-klteduos
			rm -r -f output
			mkdir output
			make -C $(pwd) O=output msm8974_sec_defconfig VARIANT_DEFCONFIG=msm8974pro_sec_klte_ltnduos_defconfig SELINUX_DEFCONFIG=selinux_defconfig
			make -C $(pwd) O=output
			cp output/arch/arm/boot/zImage $(pwd)/arch/arm/boot/zImage
            echo " "
            echo "------------------------------------------"
            echo "Kernel build finished."
            echo "Image is located in /arch/arm/boot/zImage."
            echo "Press any key for end the script."
            echo "------------------------------------------"
            read -n1 -r key
            break
            ;;
        "kltespr")
            clear
            echo "------------------------------------------"
            echo "Building kernel for kltespr..."
            echo "------------------------------------------"
            echo " "
            export ARCH=arm
            export CROSS_COMPILE=/home/blackmesa/Scrivania/Android/Sorgenti/Toolchain/UBERTC-arm-linux-androideabi-4.9-326a1d868723/bin/arm-linux-androideabi-
            export LOCALVERSION=-Espheni_Kernel_v1-kltespr
			rm -r -f output
			mkdir output
			make -C $(pwd) O=output msm8974_sec_defconfig VARIANT_DEFCONFIG=msm8974pro_sec_klte_spr_defconfig SELINUX_DEFCONFIG=selinux_defconfig
			make -j64 -C $(pwd) O=output
			cp output/arch/arm/boot/zImage $(pwd)/arch/arm/boot/zImage
            echo " "
            echo "------------------------------------------"
            echo "Kernel build finished."
            echo "Image is located in /arch/arm/boot/zImage."
            echo "Press any key for end the script."
            echo "------------------------------------------"
            read -n1 -r key
            break
            ;;
        "Exit")
            break
            ;;
        *) echo invalid option;;
    esac
done





