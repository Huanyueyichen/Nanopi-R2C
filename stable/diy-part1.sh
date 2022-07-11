#!/bin/bash


## arm机型,默认内核5.15，修改内核为5.10
sed -i 's/PATCHVER=5.15/PATCHVER=5.10/g' target/linux/rockchip/Makefile

##回退3月28日
git reset --hard 1a86fc37114da97764e337908d05e0752941acb9


## R2C WAN口退回之前的驱动
# git reset b1b36c86af6d9fa3ba57eb2140025d2039996b81 target/linux/rockchip/patches-5.4/600-net-phy-Add-driver-for-Motorcomm-YT85xx-PHYs.patch
# git checkout target/linux/rockchip/patches-5.4/600-net-phy-Add-driver-for-Motorcomm-YT85xx-PHYs.patch
