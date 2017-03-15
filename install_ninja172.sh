#!/bin/bash -e
cd ~
curl -L https://github.com/ninja-build/ninja/releases/download/v1.7.2/ninja-linux.zip > ninja-linux.zip
unzip ninja-linux.zip -d /usr/local/bin/
rm -rf ninja-*
