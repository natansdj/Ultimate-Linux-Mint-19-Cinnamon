#!/bin/bash
sudo nmcli networking off
sleep 1
sudo systemctl stop NetworkManager
sleep 1
sudo ip link set wlp2s0 down
sleep 1
sudo modprobe -r ath10k_pci
sleep 2
sudo modprobe -r ath10k_core
sleep 2
sudo modprobe ath10k_pci
sleep 2
sudo ip link set wlp2s0 up
sleep 1
sudo systemctl start NetworkManager
sleep 2
sudo nmcli networking on
sleep 1
exit
