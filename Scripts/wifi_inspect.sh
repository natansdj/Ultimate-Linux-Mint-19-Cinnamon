#!/bin/bash

echo "------------------------"
echo "dmesg | grep -i firmware"
echo "------------------------"
dmesg | grep -i firmware

echo "----------------------"
echo "inxi -nxz"
echo "----------------------"
inxi -nxz

echo "----------------------"
echo "nmcli device"
echo "----------------------"
nmcli device

echo "----------------------"
echo "nmcli radio"
echo "----------------------"
nmcli radio

echo "----------------------"
echo "nmcli device wifi list"
echo "----------------------"
nmcli device wifi list

echo "----------------------"
echo "hwinfo --network"
echo "----------------------"
hwinfo --network

echo "----------------------"
echo "lspci -kv"
echo "----------------------"
lspci -kv 

echo "----------------------"
echo "ip addr"
echo "----------------------"
ip addr

echo "----------------------"
echo "iw dev"
echo "----------------------"
iw dev

echo "----------------------"
echo "dmesg | grep -i ath10k"
echo "----------------------"
dmesg | grep -i ath10k

echo "--------------------"
echo "rfkill list all"
echo "--------------------"
rfkill list all

echo "--------------------"
echo "sudo lshw -C network"
echo "--------------------"
sudo lshw -C network

echo "--------------------"
echo "To disable ath10k_pci"
echo "sudo nano /etc/modprobe.d/blacklist-ath_pci.conf"
echo "add this line : "
echo "blacklist ath10k_pci"
echo "--------------------"
echo "sudo nano /etc/network/interfaces"
echo "add this line : "
echo "iface wlp2s0 inet manual"
echo "--------------------"


