# Alphasocket/dockerized-php-fpm-alpine
#### php-fpm-alpine
Dockerized PHP-FPM service on alpine distro


| [![Build Status](https://semaphoreci.com/api/v1/alphasocket/dockerized-php-fpm-alpine/branches/7.0/badge.svg)](https://semaphoreci.com/alphasocket/dockerized-php-fpm-alpine) | Layers | Size  |
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
  + libmagic
  + file
  + libgcc
  + libstdc++
  + gmp
  + libgomp
  + libatomic
  + mpfr3
  + gcc
  + libc-dev
  + g++
  + make
  + re2c


## Configurable envvars
~~~
CONFIG_REDINESS_TEST="true"
CONFIG_LIVENESS_TEST="true"
CONFIG_PATHS_CONTAINER_STATUS="/tmp/container_status"
CONFIG_PHP_EXT_CURL="True"
CONFIG_PHP_EXT_GD="True"
CONFIG_PHP_EXT_ICONV="True"
CONFIG_PHP_EXT_MYSQLI="True"
CONFIG_PHP_EXT_MBSTRING="True"
CONFIG_PHP_EXT_PDO_MYSQL="True"
CONFIG_PHP_EXT_MCRYPT="True"
CONFIG_PHP_EXT_OPCACHE="True"
CONFIG_PHP_EXT_READLINE="True"
CONFIG_PHP_EXT_REDIS="True"
CONFIG_PHP_EXT_SOAP="True"
CONFIG_PHP_EXT_SODIUM="False"
CONFIG_PHP_EXT_XML="True"
CONFIG_PHP_EXT_XDEBUG="False"
CONFIG_PHP_EXT_ZIP="True"
~~~
