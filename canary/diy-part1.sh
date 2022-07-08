#!/bin/bash


## arm机型,默认内核5.15，修改内核为5.10
sed -i 's/PATCHVER=5.15/PATCHVER=5.18/g' target/linux/rockchip/Makefile


# 交换 LAN/WAN 口
#sed -i 's,"eth1" "eth0","eth0" "eth1",g' target/linux/rockchip/armv8/base-files/etc/board.d/02_network
#sed -i "s,'eth1' 'eth0','eth0' 'eth1',g" target/linux/rockchip/armv8/base-files/etc/board.d/02_network



## R2C WAN口退回之前的驱动
# git reset b1b36c86af6d9fa3ba57eb2140025d2039996b81 target/linux/rockchip/patches-5.4/600-net-phy-Add-driver-for-Motorcomm-YT85xx-PHYs.patch
# git checkout target/linux/rockchip/patches-5.4/600-net-phy-Add-driver-for-Motorcomm-YT85xx-PHYs.patch



## 替换rtl8821cu驱动
# rm -rf package/kernel/rtl8821cu
# git clone https://github.com/brektrou/rtl8821CU.git package/kernel/rtl8821cu

# lede 20210924版本
# git reset 8eaa4051c98abf6a7f8594b165cea862ef21a972 package/kernel/rtl8821cu

# git checkout package/kernel/rtl8821cu
