FROM php:7-fpm-alpine

COPY setup.sh /bin/setup.sh
RUN setup.sh

# php & xdebug port
EXPOSE 9000 9999

ENTRYPOINT ["/usr/sbin/php-fpm", "--nodaemonize"]