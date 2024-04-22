#!/bin/bash

sudo swapon /var/swapfile

pushd fastswap/drivers

#make clean
#make 

sudo insmod ./fastswap_dram.ko delay_time=4
sudo insmod ./fastswap.ko

popd
