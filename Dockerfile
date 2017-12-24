FROM php:X-fpm-alpine

ADD bin/setup /usr/local/bin/setup
ADD bin/config /usr/local/bin/config

RUN chmod +rx /usr/local/bin/setup && \
    chmod +rx /usr/local/bin/config && \
    sync && \
    /usr/local/bin/setup

ENV PHP_ENABLED_EXTENSIONS='gd iconv opcache readline soap xml mysqli curl json mcrypt curl mbstring zip redis xdebug' 

# php & xdebug port
EXPOSE 9000 9999

ENTRYPOINT ["config && docker-php-entrypoint"]
