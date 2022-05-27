FROM httpd:2.4.53-alpine3.16

RUN apk add --no-cache  --repository http://dl-cdn.alpinelinux.org/alpine/edge/community php
COPY . /usr/local/apache2/htdocs

