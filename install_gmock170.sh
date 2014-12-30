#!/bin/bash -e
cd ~                                                                               
wget https://googlemock.googlecode.com/files/gmock-1.7.0.zip                       
unzip gmock-1.7.0.zip                                                              
cd gmock-1.7.0/                                                                    
mkdir build;cd build;cmake ..;make -j4;cd ..
cp -r include/* /usr/local/include/                                                
cp build/*.a /usr/local/lib/                                                 
cd gtest/                                                                    
mkdir build;cd build;cmake ..;make -j4;cd ..
cp -r include/* /usr/local/include/                                                
cp build/*.a /usr/local/lib/                                                 
cd ~                                                                               
rm -rf gmock-1.7.0*

