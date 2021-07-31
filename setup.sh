#!/bin/sh
mkdir build
cd build
cmake ..
make
sudo avahi-daemon
./afl
