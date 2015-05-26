#!/bin/bash -e
cd ~
wget https://github.com/apache/xerces-c/archive/Xerces-C_2_8_0.zip
unzip Xerces-C_2_8_0
cd xerces-c-Xerces-C_2_8_0/src/xercesc
export XERCESCROOT=~/xerces-c-Xerces-C_2_8_0
./runConfigure -p linux
make
cd ../..
cp -r include/xercesc /usr/include/
cp lib/libxerces-c.so.28.0 /usr/lib/
ln -sf /usr/lib/libxerces-c.so.28.0 /usr/lib/libxerces-c.so
cd ~
rm -rf Xerces-C_2_8_0 xerces-c-Xerces-C_2_8_0
