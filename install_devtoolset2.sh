#!/bin/bash -e
wget http://people.centos.org/tru/devtools-2/devtools-2.repo -O /etc/yum.repos.d/devtools-2.repo
sed -i "s/\$arch/i686/g" /etc/yum.repos.d/devtools-2.repo
sed -i "s/\$basearch/i386/g" /etc/yum.repos.d/devtools-2.repo
yum install -y devtoolset-2-gcc-c++ devtoolset-2-binutils devtoolset-2-libquadmath-devel devtoolset-2-gdb devtoolset-2-gdb-server; yum clean all -y
