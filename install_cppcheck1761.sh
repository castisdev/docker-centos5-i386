#!/bin/bash -e
cd ~
wget --no-check-certificate --content-disposition https://sourceforge.net/projects/cppcheck/files/cppcheck/1.76.1/cppcheck-1.76.1.tar.bz2/download
tar xf cppcheck-1.76.1.tar.bz2
cd cppcheck-1.76.1
mkdir build;cd build;cmake ..;make install
cd ~
rm -rf cppcheck*
