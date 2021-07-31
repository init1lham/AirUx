#!/bin/sh
sudo apt-get install cmake
sudo apt-get install libssl-dev libavahi-compat-libdnssd-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev gstreamer1.0-libav
sudo apt-get install gstreamer1.0-vaapi
mkdir build
cd build
cmake ..
make
sudo avahi-daemon
./afl
