#
# Do not change content here, image atomatically built
#
FROM php:7.1-fpm-alpine

ADD envvars /usr/local/envvars
ADD bin/setup /usr/local/bin/setup
ADD bin/config /usr/local/bin/config

RUN chmod +rx /usr/local/bin/setup && \
    chmod +rx /usr/local/bin/config && \
    sync && \
    /usr/local/bin/setup

# php & xdebug port
EXPOSE 9000 9001

ENTRYPOINT ["/usr/local/bin/config && docker-php-entrypoint"]
