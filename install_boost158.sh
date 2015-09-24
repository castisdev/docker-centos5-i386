#!/bin/bash -e
yum -y install bzip2-devel ; yum -y clean all
cd ~
wget http://sourceforge.net/projects/boost/files/boost/1.58.0/boost_1_58_0.tar.gz
tar xzf boost_1_58_0.tar.gz
cd boost_1_58_0
./bootstrap.sh
./b2 --prefix=/usr/local/boost158 --without-python install
./b2 boost.locale.icu=off --with-locale --prefix=/usr/local/boost158 install
cd ~
rm -rf boost_1_58_0*
