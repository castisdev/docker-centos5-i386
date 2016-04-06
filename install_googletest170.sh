#!/bin/bash -e
cd ~
git clone https://github.com/google/googletest.git
cd googletest/
mkdir build;cd build;cmake ..;make install
cd ~
rm -rf googletest*
