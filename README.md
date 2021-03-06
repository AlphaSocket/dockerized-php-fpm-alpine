# Alphasocket/dockerized-php-fpm-alpine
#### php-fpm-alpine
Dockerized PHP-FPM service on alpine distro


| [![Build Status](https://semaphoreci.com/api/v1/alphasocket/dockerized-php-fpm-alpine/branches/latest/badge.svg)](https://semaphoreci.com/alphasocket/dockerized-php-fpm-alpine) | Size / Layers | Version |
| ----- | ----- | ----- |
| Dev image | [![](https://images.microbadger.com/badges/image/03192859189254/dockerized-php-fpm-alpine:latest.svg)](https://microbadger.com/images/03192859189254/php-fpm-alpine:latest ) | [![](https://images.microbadger.com/badges/version/03192859189254/dockerized-php-fpm-alpine:latest.svg)](https://microbadger.com/images/03192859189254/php-fpm-alpine:latest) |
| Prd image | [![](https://images.microbadger.com/badges/image/alphasocket/php-fpm-alpine:latest.svg)](https://microbadger.com/images/alphasocket/php-fpm-alpine:latest ) | [![](https://images.microbadger.com/badges/version/alphasocket/php-fpm-alpine:latest.svg)](https://microbadger.com/images/alphasocket/php-fpm-alpine:latest) |

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
  + dpkg-dev
  + libbz2
  + dpkg
  + zlib-dev
  + icu-dev


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
CONFIG_PHP_EXT_GD_ENABLED="True"
CONFIG_PHP_EXT_ICONV_ENABLED="True"
CONFIG_PHP_EXT_INTL_ENABLED="False"
CONFIG_PHP_EXT_MYSQLI_ENABLED="True"
CONFIG_PHP_EXT_MBSTRING_ENABLED="True"
CONFIG_PHP_EXT_PDO_MYSQL_ENABLED="True"
CONFIG_PHP_EXT_MCRYPT_ENABLED="True"
CONFIG_PHP_EXT_OPCACHE_ENABLED="True"
CONFIG_PHP_EXT_READLINE_ENABLED="True"
CONFIG_PHP_EXT_REDIS_ENABLED="True"
CONFIG_PHP_EXT_XDEBUG_ENABLED="False"
CONFIG_PHP_EXT_SOAP_ENABLED="True"
CONFIG_PHP_EXT_SODIUM_ENABLED="False"
CONFIG_PHP_EXT_XML_ENABLED="True"
CONFIG_PHP_EXT_ZIP_ENABLED="True"
CONFIG_PHP_PATHS_CONFIG_PHP_FPM_FOLDER="/usr/local/etc/php-fpm.d"
CONFIG_PHP_POOL_NAME="www"
CONFIG_PHP_POOL_USER="www-data"
CONFIG_PHP_POOL_GROUP="www-data"
CONFIG_PHP_POOL_LISTEN_HOST="127.0.0.1"
CONFIG_PHP_POOL_LISTEN_PORT="9000"
~~~
