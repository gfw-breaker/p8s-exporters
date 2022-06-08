#!/bin/bash

version=1.6

yum -y install GeoIP-devel ncurses-devel tokyocabinet-devel openssl-devel

wget --no-check-certificate https://tar.goaccess.io/goaccess-${version}.tar.gz
tar -xzvf *.gz && rm *.gz
cd goaccess-*
./configure --enable-utf8	\
	--enable-geoip=legacy	\
	--enable-debug			\
	--enable-tcb=memhash	\
	--with-getline			\
	--with-openssl

make
make install


