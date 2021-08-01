#!/bin/sh
tput setaf 0;
sudo apt-get install cmake gstreamer1.0-vaapi libssl-dev libavahi-compat-libdnssd-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev gstreamer1.0-libav -y 
mkdir build 
cd build 
cmake ..
make 
sudo cp AirUx /usr/local/bin                     
sudo avahi-daemon 
tput setaf 1;
figlet "AirUx is added to path. You can access AirUx from anywhere."
tput setaf 2;
figlet "AirUx is Running"
tput setaf 3;
./AirUx 
