#
# Do not change content here, image automatically built
#
FROM php:/bin/sh: 1: [: 7.0: unexpected operator
7.0-fpm-alpine

ADD envvars /usr/local/envvars
ADD bin/setup /usr/local/bin/setup
ADD bin/config /usr/local/bin/config

RUN chmod +rx /usr/local/bin/setup && \
    chmod +rx /usr/local/bin/config && \
    sync && \
    /usr/local/bin/setup

EXPOSE 9000 

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/usr/local/bin/config && /usr/local/bin/docker-php-entrypoint php-fpm"]