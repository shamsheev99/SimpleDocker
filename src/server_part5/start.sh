#!/bin/bash
gcc main.c -lfcgi
spawn-fcgi -p 8080 ./a.out
nginx -g "daemon off;"
service nginx start
/bin/bash
