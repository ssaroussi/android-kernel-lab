#!/bin/bash

ROOT_DIR=$(pwd)/../

source $ROOT_DIR/configs/common_env.sh
BOOT_IMG=cooked_boot

fastboot devices
fastboot flash boot $IMG_DIR_PATH/$BOOT_IMG.img