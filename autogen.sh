#!/bin/sh -e

cd "`dirname "$0"`"

rm -fr m4
mkdir -p m4

echo "intltoolize..."
intltoolize -c --force

echo "aclocal..."
aclocal

echo "autoheader..."
autoheader

echo "autoconf..."
autoconf

echo "libtoolize..."
libtoolize

echo "automake..."
automake -a -c

