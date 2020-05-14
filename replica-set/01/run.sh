#!/bin/bash

echo "Hello from $(hostname)" >/var/www/html/index.html
httpd -DFOREGROUND