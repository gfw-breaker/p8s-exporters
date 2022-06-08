#!/bin/bash

version=1.6

yum -y install GeoIP-devel ncurses-devel openssl-devel 

wget --no-check-certificate https://tar.goaccess.io/goaccess-${version}.tar.gz
tar -xzvf goaccess*.gz && rm *.gz

cd goaccess-*

./configure --enable-utf8 \
	--enable-geoip=legacy \
	--enable-debug \
	--with-getline \
	--with-openssl

make
make install

cd ..
mkdir -p /usr/share/nginx/html/goaccess

cp goaccess.conf /usr/local/etc/goaccess/
cp goaccess.service /etc/systemd/system/
systemctl enable goaccess --now


