#!/bin/sh
sudo apt-get install cmake -y
sudo apt-get install libssl-dev libavahi-compat-libdnssd-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev gstreamer1.0-libav -y
sudo apt-get install gstreamer1.0-vaapi -y
mkdir build
cd build
cmake ..
make
sudo cp AirUx /usr/local/bin
ehco "AirUx added to path. You can run sudo AirUx to access AirUx from everywhere."
sudo avahi-daemon
./AirUx

