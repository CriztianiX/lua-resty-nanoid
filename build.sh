#!/bin/bash
rm -Rf .libs nanoid.so ; mkdir .libs

LUA_CFLAGS="-I./resty -I/usr/local/openresty/luajit/include/luajit-2.1"

gcc $LUA_CFLAGS -O2 -fpic -c -o .libs/nanoid.o resty/nanoid.c
gcc $LUA_CFLAGS -O -shared -fpic -o nanoid.so .libs/nanoid.o

luajit t.lua
