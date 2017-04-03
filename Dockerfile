FROM php:5.6-fpm-alpine
# Updating repo
RUN apk apk update
# Installing dependencies for PHP extensions
RUN apk add freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev libedit-dev libxml2-dev curl-dev
# Installing dependencies for compile gd
RUN apk add m4 perl autoconf libmagic file libgcc libstdc++ binutils-libs binutils gmp  libgomp libatomic mpfr3  gcc musl-dev libc-dev g++ make re2c libmcrypt
# Installing dependencies for XDebug
RUN apk add ca-certificates openssl
RUN update-ca-certificates

# Compiling gd
RUN docker-php-ext-configure gd \
    --with-gd \
    --with-freetype-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/

# Installing PHP extensions
RUN docker-php-ext-install \
    gd iconv opcache readline soap xml mysqli curl json mcrypt curl mbstring zip

# Installing Xdebug
ENV XDEBUG_VERSION 2.5.0
RUN cd /tmp \
    && wget http://xdebug.org/files/xdebug-$XDEBUG_VERSION.tgz \
    && tar -zxvf xdebug-$XDEBUG_VERSION.tgz \
    && cd xdebug-$XDEBUG_VERSION && phpize \
    && ./configure --enable-xdebug && make && make install \
    && echo "zend_extension=$(find /usr/lib/php/modules/ -name xdebug.so)" > /etc/php/php.ini \
    && echo "xdebug.remote_enable=on" >> /etc/php/php.ini \
    && echo "xdebug.remote_handler=dbgp" >> /etc/php/php.ini \
    && echo "xdebug.remote_connect_back=1" >> /etc/php/php.ini \
    && echo "xdebug.remote_autostart=on" >> /etc/php/php.ini \
    && echo "xdebug.remote_port=9004" >> /etc/php/php.ini

#Cleanup
RUN rm -rf /tmp/* \
   && rm -rf /var/cache/apk/*

# Set Workdir
WORKDIR /var/www/html

EXPOSE 9000
