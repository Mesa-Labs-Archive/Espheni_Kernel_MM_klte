#!/bin/bash
# Coded by BlackMesa @EspheniKernel v2

clear
EK_VERSION=v2
EK_DATE=$(date +%Y%m%d)
echo "------------------------------------------"
echo "EspheniKernel v2 Build Script"
echo "Coded by BlackMesa"
echo "------------------------------------------"
PS3='Please select the kernel variant you want to build (1-11): '
options=("klte" "kltechn" "kltechnduos" "kltedcm" "kltedd" "klteduos" "kltekdi" "kltekor" "kltespr" "klteusc" "kltevzw" "Exit")
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
            make clean
            rm -r -f output
            mkdir output
            make -C $(pwd) O=output espheni_msm8974_defconfig VARIANT_DEFCONFIG=espheni_msm8974pro_klte_defconfig SELINUX_DEFCONFIG=espheni_selinux_defconfig
            make -j64 -C $(pwd) O=output
            mv output/arch/arm/boot/zImage $(pwd)/ramdisk/$EK_VARIANT/split_img/boot.img-zImage
            ./ramdisk/$EK_VARIANT/repackimg.sh
            rm -f ramdisk/$EK_VARIANT/ramdisk-new.cpio.gz
            echo " "
            echo "------------------------------------------"
            echo "Kernel build finished."
            echo "boot.img is located into the ramdisk folder of the variant you selected."
            echo "Press any key for end the script."
            echo "------------------------------------------"
            read -n1 -r key
            break
            ;;
        "kltechn")
            clear
            echo "------------------------------------------"
            echo "Building kernel for kltechn..."
            echo "------------------------------------------"
            echo " "
            EK_VARIANT=kltechn
            export ARCH=arm
            export CROSS_COMPILE=/home/blackmesa/Scrivania/Android/Sorgenti/Toolchain/hyper-arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
            export LOCALVERSION=-Espheni_Kernel-$EK_VERSION-$EK_VARIANT-$EK_DATE
            make clean
            rm -r -f output
            mkdir output
            make -C $(pwd) O=output espheni_msm8974_defconfig VARIANT_DEFCONFIG=espheni_msm8974pro_kltechn_defconfig SELINUX_DEFCONFIG=espheni_selinux_defconfig
            make -C $(pwd) O=output
            mv output/arch/arm/boot/zImage $(pwd)/ramdisk/$EK_VARIANT/split_img/boot.img-zImage
            ./ramdisk/$EK_VARIANT/repackimg.sh
            rm -f ramdisk/$EK_VARIANT/ramdisk-new.cpio.gz
            echo " "
            echo "------------------------------------------"
            echo "Kernel build finished."
            echo "boot.img is located into the ramdisk folder of the variant you selected."
            echo "Press any key for end the script."
            echo "------------------------------------------"
            read -n1 -r key
            break
            ;;
        "kltechnduos")
            clear
            echo "------------------------------------------"
            echo "Building kernel for kltechnduos..."
            echo "------------------------------------------"
            echo " "
            EK_VARIANT=kltechnduos
            export ARCH=arm
            export CROSS_COMPILE=/home/blackmesa/Scrivania/Android/Sorgenti/Toolchain/hyper-arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
            export LOCALVERSION=-Espheni_Kernel-$EK_VERSION-$EK_VARIANT-$EK_DATE
            make clean
            rm -r -f output
            mkdir output
            make -C $(pwd) O=output espheni_msm8974_defconfig VARIANT_DEFCONFIG=espheni_msm8974pro_kltechnduos_defconfig SELINUX_DEFCONFIG=espheni_selinux_defconfig
            make -C $(pwd) O=output
            mv output/arch/arm/boot/zImage $(pwd)/ramdisk/$EK_VARIANT/split_img/boot.img-zImage
            ./ramdisk/$EK_VARIANT/repackimg.sh
            rm -f ramdisk/$EK_VARIANT/ramdisk-new.cpio.gz
            echo " "
            echo "------------------------------------------"
            echo "Kernel build finished."
            echo "boot.img is located into the ramdisk folder of the variant you selected."
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
            make clean
            rm -r -f output
            mkdir output
            make -C $(pwd) O=output espheni_msm8974_defconfig VARIANT_DEFCONFIG=espheni_msm8974pro_kltedcm_defconfig SELINUX_DEFCONFIG=espheni_selinux_defconfig
            make -j64 -C $(pwd) O=output
            mv output/arch/arm/boot/zImage $(pwd)/ramdisk/$EK_VARIANT/split_img/boot.img-zImage
            ./ramdisk/$EK_VARIANT/repackimg.sh
            rm -f ramdisk/$EK_VARIANT/ramdisk-new.cpio.gz
            echo " "
            echo "------------------------------------------"
            echo "Kernel build finished."
            echo "boot.img is located into the ramdisk folder of the variant you selected."
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
            make clean
            rm -r -f output
            mkdir output
            make -C $(pwd) O=output espheni_msm8974_defconfig VARIANT_DEFCONFIG=espheni_msm8974pro_kltedd_defconfig SELINUX_DEFCONFIG=espheni_selinux_defconfig
            make -C $(pwd) O=output
            mv output/arch/arm/boot/zImage $(pwd)/ramdisk/$EK_VARIANT/split_img/boot.img-zImage
            ./ramdisk/$EK_VARIANT/repackimg.sh
            rm -f ramdisk/$EK_VARIANT/ramdisk-new.cpio.gz
            echo " "
            echo "------------------------------------------"
            echo "Kernel build finished."
            echo "boot.img is located into the ramdisk folder of the variant you selected."
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
            make clean
            rm -r -f output
            mkdir output
            make -C $(pwd) O=output espheni_msm8974_defconfig VARIANT_DEFCONFIG=espheni_msm8974pro_klteduos_defconfig SELINUX_DEFCONFIG=espheni_selinux_defconfig
            make -C $(pwd) O=output
            mv output/arch/arm/boot/zImage $(pwd)/ramdisk/$EK_VARIANT/split_img/boot.img-zImage
            ./ramdisk/$EK_VARIANT/repackimg.sh
            rm -f ramdisk/$EK_VARIANT/ramdisk-new.cpio.gz
            echo " "
            echo "------------------------------------------"
            echo "Kernel build finished."
            echo "boot.img is located into the ramdisk folder of the variant you selected."
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
            make clean
            rm -r -f output
            mkdir output
            make -C $(pwd) O=output espheni_msm8974_defconfig VARIANT_DEFCONFIG=espheni_msm8974pro_kltekdi_defconfig SELINUX_DEFCONFIG=espheni_selinux_defconfig
            make -j64 -C $(pwd) O=output
            mv output/arch/arm/boot/zImage $(pwd)/ramdisk/$EK_VARIANT/split_img/boot.img-zImage
            ./ramdisk/$EK_VARIANT/repackimg.sh
            rm -f ramdisk/$EK_VARIANT/ramdisk-new.cpio.gz
            echo " "
            echo "------------------------------------------"
            echo "Kernel build finished."
            echo "boot.img is located into the ramdisk folder of the variant you selected."
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
            make clean
            rm -r -f output
            mkdir output
            make -C $(pwd) O=output espheni_msm8974_defconfig VARIANT_DEFCONFIG=espheni_msm8974pro_kltekor_defconfig SELINUX_DEFCONFIG=espheni_selinux_defconfig
            make -C $(pwd) O=output
            mv output/arch/arm/boot/zImage $(pwd)/ramdisk/$EK_VARIANT/split_img/boot.img-zImage
            ./ramdisk/$EK_VARIANT/repackimg.sh
            rm -f ramdisk/$EK_VARIANT/ramdisk-new.cpio.gz
            echo " "
            echo "------------------------------------------"
            echo "Kernel build finished."
            echo "boot.img is located into the ramdisk folder of the variant you selected."
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
            make clean
            rm -r -f output
            mkdir output
            make -C $(pwd) O=output espheni_msm8974_defconfig VARIANT_DEFCONFIG=espheni_msm8974pro_kltespr_defconfig SELINUX_DEFCONFIG=espheni_selinux_defconfig
            make -j64 -C $(pwd) O=output
            mv output/arch/arm/boot/zImage $(pwd)/ramdisk/$EK_VARIANT/split_img/boot.img-zImage
            ./ramdisk/$EK_VARIANT/repackimg.sh
            rm -f ramdisk/$EK_VARIANT/ramdisk-new.cpio.gz
            echo " "
            echo "------------------------------------------"
            echo "Kernel build finished."
            echo "boot.img is located into the ramdisk folder of the variant you selected."
            echo "Press any key for end the script."
            echo "------------------------------------------"
            read -n1 -r key
            break
            ;;
        "klteusc")
            clear
            echo "------------------------------------------"
            echo "Building kernel for klteusc..."
            echo "------------------------------------------"
            echo " "
            EK_VARIANT=klteusc
            export ARCH=arm
            export CROSS_COMPILE=/home/blackmesa/Scrivania/Android/Sorgenti/Toolchain/hyper-arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
            export LOCALVERSION=-Espheni_Kernel-$EK_VERSION-$EK_VARIANT-$EK_DATE
            make clean
            rm -r -f output
            mkdir output
            make -C $(pwd) O=output espheni_msm8974_defconfig VARIANT_DEFCONFIG=espheni_msm8974pro_klteusc_defconfig SELINUX_DEFCONFIG=espheni_selinux_defconfig
            make -C $(pwd) O=output
            mv output/arch/arm/boot/zImage $(pwd)/ramdisk/$EK_VARIANT/split_img/boot.img-zImage
            ./ramdisk/$EK_VARIANT/repackimg.sh
            rm -f ramdisk/$EK_VARIANT/ramdisk-new.cpio.gz
            echo " "
            echo "------------------------------------------"
            echo "Kernel build finished."
            echo "boot.img is located into the ramdisk folder of the variant you selected."
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
            make clean
            rm -r -f output
            mkdir output
            make -C $(pwd) O=output espheni_msm8974_defconfig VARIANT_DEFCONFIG=espheni_msm8974pro_kltevzw_defconfig SELINUX_DEFCONFIG=espheni_selinux_defconfig
            make -C $(pwd) O=output
            mv output/arch/arm/boot/zImage $(pwd)/ramdisk/$EK_VARIANT/split_img/boot.img-zImage
            ./ramdisk/$EK_VARIANT/repackimg.sh
            rm -f ramdisk/$EK_VARIANT/ramdisk-new.cpio.gz
            echo " "
            echo "------------------------------------------"
            echo "Kernel build finished."
            echo "boot.img is located into the ramdisk folder of the variant you selected."
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
