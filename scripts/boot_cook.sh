#!/bin/bash

ROOT_DIR=$(pwd)/../

source $ROOT_DIR/configs/common_env.sh
source $ROOT_DIR/configs/$ARCH_CONFIG

mkdir -p $TMP_DIR
cd $TMP_DIR

abootimg -x $IMG_DIR_PATH/boot.img
sed -i '/bootsize =/d' 's/cmdline.*/cmdline=console=ttyHSL0,115200,n8 kgdboc=ttyHSL0,115200/' bootimg.cfg
abootimg --create $IMG_DIR_PATH/cooked_boot.img -f bootimg.cfg -k $ROOT_DIR/builds/$LBL/$ARCH/boot/Image.gz-dtb -r initrd.img
