#!/bin/bash

ROOT_DIR=$(pwd)/../

source $ROOT_DIR/configs/common_env.sh
source $ROOT_DIR/configs/$ARCH_CONFIG

echo $ARCH_CONFIG

make -C $ROOT_DIR/kernels/$LBL/ $DEVICE_CONFIG
make -C $ROOT_DIR/kernels/$LBL/ -j9
