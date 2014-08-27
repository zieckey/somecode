#!/bin/sh

VERSION=v3.10.3
NAME=stringencoders-${VERSION}
TAR=${NAME}.tar.gz

tar zxvf $TAR
cd $NAME
./configure --with-pic --prefix=`pwd`/install
#sed -i 's/-Wall/-Wall -fPIC/g' Makefile
make || echo 'make failed'
#make test
#make install
cd ../
mkdir -p install/include install/lib
cp $NAME/.libs/*.so install/lib
cp $NAME/src/*.h install/include

