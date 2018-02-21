# Alphasocket/dockerized-php-fpm-alpine
#### php-fpm-alpine
Dockerized PHP-FPM service on alpine distro


| [![Build Status](https://semaphoreci.com/api/v1/alphasocket/dockerized-php-fpm-alpine/branches/7.0/badge.svg)](https://semaphoreci.com/alphasocket/dockerized-php-fpm-alpine) | Size / Layers | Version |
| ----- | ----- | ----- |
| Dev image | [![](https://images.microbadger.com/badges/image/03192859189254/dockerized-php-fpm-alpine:7.0.svg)](https://microbadger.com/images/03192859189254/php-fpm-alpine:7.0 ) | [![](https://images.microbadger.com/badges/version/03192859189254/dockerized-php-fpm-alpine:7.0.svg)](https://microbadger.com/images/03192859189254/php-fpm-alpine:7.0) |
| Prd image | [![](https://images.microbadger.com/badges/image/alphasocket/php-fpm-alpine:7.0.svg)](https://microbadger.com/images/alphasocket/php-fpm-alpine:7.0 ) | [![](https://images.microbadger.com/badges/version/alphasocket/php-fpm-alpine:7.0.svg)](https://microbadger.com/images/alphasocket/php-fpm-alpine:7.0) |

## Branches & Versions
- 5.6
- 5.6-dev
- 7.0
- 7.0-dev
- 7.1
- 7.1-dev
- 7.2
- 7.2-dev
- latest
- latest-dev


## Packages installed
- Setup dependencies:
  + binutils-libs
  + binutils
  + m4
  + perl
  + autoconf
  + file
  + libgcc
  + gmp
  + mpfr3
  + gcc
  + g++
  + make
  + re2c
  + libatomic
  + libstdc++
  + libmagic
  + libc-dev
- Config dependencies:
  + gettext


## Configurable envvars
~~~
CONFIG_REDINESS_TEST="true"
CONFIG_LIVENESS_TEST="true"
CONFIG_PATHS_CONTAINER_STATUS="/tmp/container_status"
CONFIG_GROUPS_ADDITIONAL_ID="1001"
CONFIG_GROUPS_ADDITIONAL_NAME=""
CONFIG_GROUPS_MAIN_NAME="www-data"
CONFIG_GROUPS_MAIN_ID="1082"
CONFIG_USERS_ADDITIONAL_ID="1001"
CONFIG_USERS_ADDITIONAL_NAME=""
CONFIG_USERS_ADDITIONAL_GROUPS=""
CONFIG_USERS_MAIN_NAME="www-data"
CONFIG_USERS_MAIN_ID="1082"
CONFIG_USERS_MAIN_GROUPS="www-data"
CONFIG_PHP_EXT_CURL_ENABLED="True"
CONFIG_PHP_EXT_CURL_DEPENDENCIES="curl-dev"
CONFIG_PHP_EXT_GD_ENABLED="True"
CONFIG_PHP_EXT_GD_DEPENDENCIES="freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev musl musl-dev"
CONFIG_PHP_EXT_GD_CONFIGURE="True"
CONFIG_PHP_EXT_GD_CONFIGURE_ARG=" --with-gd --with-freetype-dir=/usr/include/ --with-png-dir=/usr/include/ --with-jpeg-dir=/usr/include/"
CONFIG_PHP_EXT_ICONV_ENABLED="True"
CONFIG_PHP_EXT_ICONV_DEPENDENCIES="musl musl-dev"
CONFIG_PHP_EXT_MYSQLI_ENABLED="True"
CONFIG_PHP_EXT_MYSQLI_DEPENDENCIES="libxml2-dev"
CONFIG_PHP_EXT_MBSTRING_ENABLED="True"
CONFIG_PHP_EXT_PDO_MYSQL_ENABLED="True"
CONFIG_PHP_EXT_PDO_MYSQL_DEPENDENCIES="libxml2-dev"
CONFIG_PHP_EXT_MCRYPT_ENABLED="True"
CONFIG_PHP_EXT_MCRYPT_DEPENDENCIES="libmcrypt-dev libltdl"
CONFIG_PHP_EXT_OPCACHE_ENABLED="True"
CONFIG_PHP_EXT_OPCACHE_DEPENDENCIES="musl musl-dev"
CONFIG_PHP_EXT_READLINE_ENABLED="True"
CONFIG_PHP_EXT_READLINE_DEPENDENCIES="musl-dev libedit-dev"
CONFIG_PHP_EXT_REDIS_ENABLED="True"
CONFIG_PHP_EXT_REDIS_PECL="True"
CONFIG_PHP_EXT_XDEBUG_ENABLED="False"
CONFIG_PHP_EXT_XDEBUG_PECL="True"
CONFIG_PHP_EXT_XDEBUG_VERSION=""
CONFIG_PHP_EXT_SOAP_ENABLED="True"
CONFIG_PHP_EXT_SOAP_DEPENDENCIES="libxml2-dev"
CONFIG_PHP_EXT_SODIUM_ENABLED="False"
CONFIG_PHP_EXT_SODIUM_DEPENDENCIES="libsodium-dev"
CONFIG_PHP_EXT_XML_ENABLED="True"
CONFIG_PHP_EXT_XML_DEPENDENCIES="libxml2-dev"
CONFIG_PHP_EXT_ZIP_ENABLED="True"
CONFIG_PHP_EXT_ZIP_DEPENDENCIES="zlib"
CONFIG_PHP_EXTS="curl gd iconv mysqli mbstring pdo_mysql mcrypt opcache readline redis xdebug soap sodium xml zip"
CONFIG_PHP_PATHS_CONFIG_PHP_FPM_FOLDER="/usr/local/etc/php-fpm.d"
CONFIG_PHP_POOL_NAME="www"
CONFIG_PHP_POOL_USER="www-data"
CONFIG_PHP_POOL_GROUP="www-data"
CONFIG_PHP_POOL_LISTEN_HOST="127.0.0.1"
CONFIG_PHP_POOL_LISTEN_PORT="9000"
~~~
