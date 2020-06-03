#!/bin/bash

dmesg | grep -i firmware

inxi -Fxz

nmcli device

nmcli radio

nmcli device wifi list

hwinfo --network

lspci -kv 

ip addr

iw dev

dmesg | grep -i ath10k

rfkill list all


