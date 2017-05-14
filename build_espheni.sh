#!/bin/bash
# Coded by BlackMesa @EspheniKernel

clear
EK_VERSION=v1
EK_DATE=$(date +%Y%m%d)
echo "------------------------------------------"
echo "EspheniKernel Build Script"
echo "Coded by BlackMesa"
echo "------------------------------------------"
PS3='Please select the kernel variant you want to build: '
options=("klte" "kltedcm" "kltedd" "klteduos" "kltekdi" "kltekor" "kltespr" "kltevzw" "Exit")
select opt in "${options[@]}"
do
    case $opt in
        "klte")
            clear
            echo "------------------------------------------"
            echo "Building kernel for klte..."
            echo "------------------------------------------"
            echo " "
			EK_VARIANT=klte
            export ARCH=arm
            export CROSS_COMPILE=/home/blackmesa/Scrivania/Android/Sorgenti/Toolchain/hyper-arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
            export LOCALVERSION=-Espheni_Kernel-$EK_VERSION-$EK_VARIANT-$EK_DATE
			rm -r -f output
			mkdir output
			make -C $(pwd) O=output espheni_msm8974_defconfig VARIANT_DEFCONFIG=espheni_msm8974pro_klte_defconfig SELINUX_DEFCONFIG=espheni_selinux_defconfig
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
        "kltedcm")
            clear
            echo "------------------------------------------"
            echo "Building kernel for kltedcm..."
            echo "------------------------------------------"
            echo " "
			EK_VARIANT=kltedcm
            export ARCH=arm
            export CROSS_COMPILE=/home/blackmesa/Scrivania/Android/Sorgenti/Toolchain/hyper-arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
            export LOCALVERSION=-Espheni_Kernel-$EK_VERSION-$EK_VARIANT-$EK_DATE
			rm -r -f output
			mkdir output
			make -C $(pwd) O=output espheni_msm8974_defconfig VARIANT_DEFCONFIG=espheni_msm8974pro_kltedcm_defconfig SELINUX_DEFCONFIG=espheni_selinux_defconfig
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
        "kltedd")
            clear
            echo "------------------------------------------"
            echo "Building kernel for kltedd..."
            echo "------------------------------------------"
            echo " "
			EK_VARIANT=kltedd
            export ARCH=arm
            export CROSS_COMPILE=/home/blackmesa/Scrivania/Android/Sorgenti/Toolchain/hyper-arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
            export LOCALVERSION=-Espheni_Kernel-$EK_VERSION-$EK_VARIANT-$EK_DATE
			rm -r -f output
			mkdir output
			make -C $(pwd) O=output espheni_msm8974_defconfig VARIANT_DEFCONFIG=espheni_msm8974pro_kltedd_defconfig SELINUX_DEFCONFIG=espheni_selinux_defconfig
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
        "klteduos")
            clear
            echo "------------------------------------------"
            echo "Building kernel for klteduos..."
            echo "------------------------------------------"
            echo " "
			EK_VARIANT=klteduos
            export ARCH=arm
            export CROSS_COMPILE=/home/blackmesa/Scrivania/Android/Sorgenti/Toolchain/hyper-arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
            export LOCALVERSION=-Espheni_Kernel-$EK_VERSION-$EK_VARIANT-$EK_DATE
			rm -r -f output
			mkdir output
			make -C $(pwd) O=output espheni_msm8974_defconfig VARIANT_DEFCONFIG=espheni_msm8974pro_klteduos_defconfig SELINUX_DEFCONFIG=espheni_selinux_defconfig
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
        "kltekdi")
            clear
            echo "------------------------------------------"
            echo "Building kernel for kltekdi..."
            echo "------------------------------------------"
            echo " "
			EK_VARIANT=kltekdi
            export ARCH=arm
            export CROSS_COMPILE=/home/blackmesa/Scrivania/Android/Sorgenti/Toolchain/hyper-arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
            export LOCALVERSION=-Espheni_Kernel-$EK_VERSION-$EK_VARIANT-$EK_DATE
			rm -r -f output
			mkdir output
			make -C $(pwd) O=output espheni_msm8974_defconfig VARIANT_DEFCONFIG=espheni_msm8974pro_kltekdi_defconfig SELINUX_DEFCONFIG=espheni_selinux_defconfig
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
        "kltekor")
            clear
            echo "------------------------------------------"
            echo "Building kernel for kltekor..."
            echo "------------------------------------------"
            echo " "
			EK_VARIANT=kltekor
            export ARCH=arm
            export CROSS_COMPILE=/home/blackmesa/Scrivania/Android/Sorgenti/Toolchain/hyper-arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
            export LOCALVERSION=-Espheni_Kernel-$EK_VERSION-$EK_VARIANT-$EK_DATE
			rm -r -f output
			mkdir output
			make -C $(pwd) O=output espheni_msm8974_defconfig VARIANT_DEFCONFIG=espheni_msm8974pro_kltekor_defconfig SELINUX_DEFCONFIG=espheni_selinux_defconfig
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
			EK_VARIANT=kltespr
            export ARCH=arm
            export CROSS_COMPILE=/home/blackmesa/Scrivania/Android/Sorgenti/Toolchain/hyper-arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
            export LOCALVERSION=-Espheni_Kernel-$EK_VERSION-$EK_VARIANT-$EK_DATE
			rm -r -f output
			mkdir output
			make -C $(pwd) O=output espheni_msm8974_defconfig VARIANT_DEFCONFIG=espheni_msm8974pro_kltespr_defconfig SELINUX_DEFCONFIG=espheni_selinux_defconfig
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
        "kltevzw")
            clear
            echo "------------------------------------------"
            echo "Building kernel for kltevzw..."
            echo "------------------------------------------"
            echo " "
			EK_VARIANT=kltevzw
            export ARCH=arm
            export CROSS_COMPILE=/home/blackmesa/Scrivania/Android/Sorgenti/Toolchain/hyper-arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
            export LOCALVERSION=-Espheni_Kernel-$EK_VERSION-$EK_VARIANT-$EK_DATE
			rm -r -f output
			mkdir output
			make -C $(pwd) O=output espheni_msm8974_defconfig VARIANT_DEFCONFIG=espheni_msm8974pro_kltevzw_defconfig SELINUX_DEFCONFIG=espheni_selinux_defconfig
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
        "Exit")
            break
            ;;
        *) echo invalid option;;
    esac
done





