#!/bin/bash -e
wget http://people.centos.org/tru/devtools-2/devtools-2.repo -O /etc/yum.repos.d/devtools-2.repo
sed -i "s/\$basearch/i386/" /etc/yum.repos.d/devtools-2.repo
yum install -y devtoolset-2-gcc-c++ ; yum clean all -y
yum install -y devtoolset-2-binutils ; yum clean all -y

