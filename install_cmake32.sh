#!/bin/bash -e
cd ~
wget --no-check-certificate http://www.cmake.org/files/v3.2/cmake-3.2.3.tar.gz
tar xzf cmake-3.2.3.tar.gz
cd cmake-3.2.3
./configure
make
make install
cmake --version
cd ~
rm -rf cmake-3.2.3*
