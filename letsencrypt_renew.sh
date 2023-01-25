#!/bin/bash

docker exec nginx certbot  --nginx -n --agree-tos --email support@domen.com -d domen.ru -d www.domen.ru
#docker exec nginx certbot renew
docker restart nginx
