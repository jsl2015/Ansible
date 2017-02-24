#! /bin/bash

yum install  openssl*  zlib-devel  pcre-devel  -y
yum groupinstall  "Development Tools" " Server Platform Libraries" -y
groupadd nginx
useradd nginx -s /sbin/nologin -g nginx

cd /usr/local/src/
tar xf nginx-1.10.3.tar.gz
cd /usr/local/src/nginx-1.10.3

./configure \
--prefix=/usr/local/nginx \
--sbin-path=/usr/sbin/nginx \
--error-log-path=/var/log/nginx/error.log \
--http-log-path=/var/log/nginx/access.log \
--user=nginx \
--group=nginx \
--with-http_ssl_module \
--with-http_stub_status_module \
--with-http_realip_module \
--with-http_gzip_static_module \
--with-http_addition_module  \
--with-pcre \
--with-file-aio 

make && make install
