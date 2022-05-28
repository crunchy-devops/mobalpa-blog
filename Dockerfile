FROM httpd:2.4.53-alpine3.16

RUN apk add --no-cache  --repository http://dl-cdn.alpinelinux.org/alpine/edge/community \
    php bash php-dom php-iconv php-phar php-zlib curl php-tokenizer php-xmlwriter php-simplexml


RUN curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar && \
    cp phpcs.phar /usr/local/bin/phpcs && \
    chmod +x /usr/local/bin/phpcs && \
    phpcs --config-set show_progress 1 && \
    phpcs --config-set colors 1 && \
    phpcs --config-set report_width 140 && \
    phpcs --config-set encoding utf-8

COPY . /usr/local/apache2/htdocs
WORKDIR /usr/local/apache2/htdocs
