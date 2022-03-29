#!/bin/bash


## arm机型,默认内核5.4，修改内核为5.10
sed -i 's/PATCHVER:=5.15/PATCHVER:=5.10/g' target/linux/rockchip/Makefile


## R2C WAN口退回之前的驱动
# git reset b1b36c86af6d9fa3ba57eb2140025d2039996b81 target/linux/rockchip/patches-5.4/600-net-phy-Add-driver-for-Motorcomm-YT85xx-PHYs.patch
# git checkout target/linux/rockchip/patches-5.4/600-net-phy-Add-driver-for-Motorcomm-YT85xx-PHYs.patch
