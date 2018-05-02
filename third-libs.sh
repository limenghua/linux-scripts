#!/bin/bash

#install boost1.66
wget https://dl.bintray.com/boostorg/release/1.66.0/source/boost_1_66_0.zip
unzip boost_1_66_0.zip
cd boost_1_66_0/
./bootstrap.sh
sudo ./b2 install

#install CppUTest
wget https://github.com/cpputest/cpputest/releases/download/v3.8/cpputest-3.8.tar.gz
tar -zxvf cpputest-3.8.tar.gz
cd cpputest-3.8/
cd cpputest_build
cmake ..
make
sudo make install

#install openssl
sudo yum install openssl-devel

#install cpprestsdk
git clone https://github.com/Microsoft/cpprestsdk.git
cd cpprestsdk/Release
mkdir build.debug
cd build.debug
cmake .. -DCMAKE_BUILD_TYPE=Debug
make
sudo make install

#install cpp-netlib
wget http://downloads.cpp-netlib.org/0.12.0/cpp-netlib-0.12.0-final.tar.gz
tar -zxvf cpp-netlib-0.12.0-final.tar.gz
cd cpp-netlib-0.12.0-final
./build.sh
cd build
sudo make install

#install node.js
curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -
sudo yum -y install nodejs



