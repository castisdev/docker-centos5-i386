#!/bin/sh -e
 
cd ~ 
yum install -y zlib-devel; yum clean all -y
yum install -y bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel; yum clean all -y
wget https://www.python.org/ftp/python/3.4.3/Python-3.4.3.tgz
tar xf Python-3.4.3.tgz
cd Python-3.4.3
./configure --prefix=/usr/local
make -j4 && make -j4 install
cd ~
rm -rf Python-3.4.3*

pip3 install -U pip setuptools
