#!/bin/bash -e
cd ~
wget http://www.cmake.org/files/v3.1/cmake-3.1.0.tar.gz
tar xzf cmake-3.1.0.tar.gz 
cd cmake-3.1.0
./configure 
make -j4
make -j4 install
cmake --version
cd ~
rm -rf cmake-3.1.0*

