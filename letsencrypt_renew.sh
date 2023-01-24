#!/bin/bash

#docker exec nginx certbot  --nginx -n --agree-tos --email support@adman.com -d khtoolu.ru -d www.khtoolu.ru
docker exec nginx certbot renew
docker restart nginx
