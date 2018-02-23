#!/usr/bin/env bash
echo "Installing PX4 Native Toolchain for Raspberry Pi"
echo "======================================================="
sudo apt-get update && apt-get -y upgrade

dpkg -i packages/*.deb
sudo rm /usr/bin/cpp /usr/bin/gcc /usr/bin/g++
sudo ln -s /usr/bin/cpp-4.8 /usr/bin/cpp
sudo ln -s /usr/bin/gcc-4.8 /usr/bin/gcc
sudo ln -s /usr/bin/g++-4.8 /usr/bin/g++

echo 'OK'
cmake --version
echo ' '
gcc -v
