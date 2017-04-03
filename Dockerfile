FROM php:5.6-fpm-alpine
# Updating repo
RUN apk apk update
# Installing
RUN apk add \
    # Dependencies for PHP extensions
    freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev libedit-dev libxml2-dev curl-dev \
    # Dependencies for compile gd
    m4 perl autoconf libmagic file libgcc libstdc++ binutils-libs binutils gmp libgomp libatomic mpfr3 gcc musl-dev libc-dev g++ make re2c libmcrypt-dev 

# Compiling gd
RUN docker-php-ext-configure gd \
    --with-gd \
    --with-freetype-dir=/usr/include/ \
    --with-png-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/

# Installing PHP extensions
RUN docker-php-ext-install \
    gd iconv opcache readline soap xml mysqli curl json mcrypt curl mbstring zip

# Installing redis and  Xdebug
RUN pecl install redis-3.1.0 \
    && pecl install xdebug-2.5.0 \
    && docker-php-ext-enable redis xdebug

# Set Workdir
WORKDIR /var/www/html

EXPOSE 9000
