FROM alpine:3.17
#COPY html-directory /usr/share/nginx/html

RUN apk add --update python3 py3-pip nginx 
RUN pip install certbot-nginx
RUN apk add --no-cache tini

ADD nginx.conf /etc/nginx/nginx.conf
RUN chmod 644 /etc/nginx/nginx.conf

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

COPY html-directory /var/www/html
COPY entrypoint.sh /usr/local/bin/


ENV DOMEN=khtoolu.ru \
    TZ=UTC


EXPOSE 80
EXPOSE 443


ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/entrypoint.sh"]


