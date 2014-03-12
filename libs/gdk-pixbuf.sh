#!/bin/sh

cd gdk-pixbuf
tar -xf gdk-pixbuf-2.30.6.tar.xz
cd gdk-pixbuf-2.30.6

./configure --enable-static --with-included-loaders --prefix=$PREFIX 2>&1 | tee ../../logs/gdk-pixbuf-configure.log
make -j $NUMBER_OF_PROCESSORS 2>&1 | tee ../../logs/gdk-pixbuf-make.log
make install 2>&1 | tee ../../logs/gdk-pixbuf-makeinstall.log

cd ..
rm -rf gdk-pixbuf-2.30.6