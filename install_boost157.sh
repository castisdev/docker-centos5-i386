#!/bin/bash -e
yum -y install bzip2-devel ; yum -y clean all
cd ~
wget http://sourceforge.net/projects/boost/files/boost/1.57.0/boost_1_57_0.tar.gz
tar xzf boost_1_57_0.tar.gz
cd boost_1_57_0
./bootstrap.sh
./b2 address-model=32 --prefix=/usr/local/boost157 --without-python -j4 install
./b2 address-model=32 boost.locale.icu=off --with-locale --prefix=/usr/local/boost157 -j4 install
cd ~
rm -rf boost_1_57_0*

