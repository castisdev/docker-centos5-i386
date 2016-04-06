#!/bin/bash -e
cd ~
yum -y install ncurses-devel; yum -y clean all
wget --no-check-certificate https://cmake.org/files/v3.5/cmake-3.5.1.tar.gz
tar xzf cmake-3.5.1.tar.gz
cd cmake-3.5.1
./configure
make install
cmake --version
cd ~
rm -rf cmake-*
