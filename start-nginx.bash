#!/bin/bash
sed -i "s/listen.*;/listen ${PORT};/g" /etc/nginx/conf.d/default.conf
nginx