#!/bin/sh -e
#set -e

#if [ ! -f /etc/timezone ] && [ ! -z "$TZ" ]; then
#  # At first startup, set timezone
#  cp /usr/share/zoneinfo/$TZ /etc/localtime
#  echo $TZ >/etc/timezone
#fi

mkdir -p /run/nginx && chown nginx /run/nginx/
mkdir -p /home/data/res

sed -i \
    -e "s:{{ DOMEN }}:$DOMEN:" \
    /etc/nginx/nginx.conf



exec nginx -c /etc/nginx/nginx.conf 

