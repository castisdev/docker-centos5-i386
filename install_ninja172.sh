#!/bin/bash -e
cd ~
wget --no-check-certificate --content-disposition https://github.com/ninja-build/ninja/archive/v1.7.2.tar.gz
tar xvf ninja-1.7.2.tar.gz
cd ninja-1.7.2
python3 ./bootstrap.py
install ninja /usr/local/bin/
cd ~
rm -rf ninja-*
