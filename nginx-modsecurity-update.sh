#!/bin/bash
command="nginx -v"
nginxv=$( ${command} 2>&1 )
nginxlocal=$(echo $nginxv | grep -o '[0-9.]*$')

tarpath="nginx-${nginxlocal}.tar.gz"
wget "http://nginx.org/download/${tarpath}"
tar -xzf $tarpath
rm $tarpath

cd "nginx-${nginxlocal}"
./configure --with-compat --add-dynamic-module=/opt/ModSecurity-nginx
make modules

cp objs/ngx_http_modsecurity_module.so /etc/nginx/modules/
cd ..
rm -rf "nginx-${nginxlocal}"

service nginx restart
