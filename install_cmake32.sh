#!/bin/bash -e
cd ~
wget http://www.cmake.org/files/v3.2/cmake-3.2.3.tar.gz
tar xzf cmake-3.2.3.tar.gz
cd cmake-3.2.3
./configure 
make -j4
make -j4 install
cmake --version
cd ~
rm -rf cmake-3.2.3*
