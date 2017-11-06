#!/bin/sh -e

# Source: http://toomuchdata.com/2012/06/25/how-to-install-python-2-7-3-on-centos-6-2/
cd ~
yum install -y zlib-devel; yum clean all -y
yum install -y bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel; yum clean all -y
wget https://www.python.org/ftp/python/2.7.13/Python-2.7.13.tgz
tar xf Python-2.7.13.tgz
cd Python-2.7.13
./configure --prefix=/usr/local
make altinstall
cd ~
rm -rf Python-2.7.13*
