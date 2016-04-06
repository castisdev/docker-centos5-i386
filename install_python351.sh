#!/bin/sh -e

cd ~
yum install -y zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel; yum clean all -y
wget https://www.python.org/ftp/python/3.5.1/Python-3.5.1.tgz
tar xf Python-3.5.1.tgz
cd Python-3.5.1
./configure --prefix=/usr/local
make install
cd ~
rm -rf Python-*

pip3 install -U pip setuptools
