all: nanoid.so

nanoid.so: nanoid.o
	gcc -I./resty -I/usr/local/openresty/luajit/include/luajit-2.1 -O -shared -fpic -o nanoid.so nanoid.o

nanoid.o: resty/nanoid.c
	gcc -I./resty -I/usr/local/openresty/luajit/include/luajit-2.1 -O2 -fpic -c -o nanoid.o resty/nanoid.c

install: nanoid.so
	cp nanoid.so /usr/local/openresty/lualib/
