#!/bin/bash -e
cd ~
wget http://www.cryptopp.com/cryptopp563.zip
unzip cryptopp563.zip -d cryptopp
cd cryptopp
sed -e s/march=native/march=x86-64/g GNUmakefile > tmp_make
mv tmp_make GNUmakefile
make static
make install
cd ~
rm -rf cryptopp*
