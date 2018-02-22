#
# Do not change content here, image automatically built
#
FROM php:7.2-fpm-alpine

ARG BUILD_COMMIT
ARG BUILD_DATE

ENV \
	GENERAL_DOCKER_USERS_DEV="03192859189254" \
	GENERAL_DOCKER_USERS_PRD="alphasocket" \
	GENERAL_DOCKER_USER="alphasocket" \
	GENERAL_DOCKER_REGISTRIES_DEV="docker.io" \
	GENERAL_DOCKER_REGISTRIES_PRD="docker.io" \
	GENERAL_DOCKER_REGISTRY="docker.io" \
	GENERAL_KEYS_TRUE="True" \
	GENERAL_KEYS_FALSE="False" \
	GENERAL_KEYS_DEV="dev" \
	GENERAL_KEYS_PRD="prd" \
	BUILD_USER="03192859189254" \
	BUILD_REGISTRY="docker.io" \
	BUILD_REPO="https://github.com/alphaSocket/dockerized-php-fpm-alpine" \
	BUILD_BRANCH="7.2" \
	BUILD_VERSION="7.2" \
	BUILD_ENV="prd" \
	BUILD_GROUPS_MAIN_ID="1082" \
	BUILD_GROUPS_MAIN_NAME="www-data" \
	BUILD_USERS_MAIN_ID="1082" \
	BUILD_USERS_MAIN_NAME="www-data" \
	BUILD_USERS_MAIN_GROUPS="www-data" \
	BUILD_NAME="php-fpm-alpine" \
	BUILD_PHP_VERSION="7.2" \
	BUILD_PHP_FPM_PORT="9000" \
	BUILD_PHP_XDEBUG_PORT="9001" \
	BUILD_FROM="php:7.2-fpm-alpine" \
	BUILD_PORTS_MAIN="9000" \
	BUILD_PORTS_ADDITIONAL="" \
	BUILD_CMD="/usr/local/bin/docker-php-entrypoint php-fpm" \
	BUILD_PATHS_TEMPLATES="/usr/local/templates" \
	SETUP_PATHS_BINARIES="/usr/local/bin" \
	SETUP_PATHS_SETUP="/usr/local/bin/setup" \
	SETUP_PATHS_CONFIG="/usr/local/bin/config" \
	SETUP_DEPENDENCIES_SETUP="binutils-libs binutils m4 perl autoconf file libgcc gmp mpfr3 gcc g++ make re2c libatomic libstdc++ libmagic libc-dev" \
	SETUP_DEPENDENCIES_CONFIG="gettext" \
	SETUP_DEPENDENCIES_RUNTIME="" \
	SETUP_PHP_EXT_CURL_ENABLED="True" \
	SETUP_PHP_EXT_CURL_DEPENDENCIES="curl-dev" \
	SETUP_PHP_EXT_GD_ENABLED="True" \
	SETUP_PHP_EXT_GD_DEPENDENCIES="freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev musl musl-dev" \
	SETUP_PHP_EXT_GD_CONFIGURE="True" \
	SETUP_PHP_EXT_GD_CONFIGURE_ARG=" --with-gd --with-freetype-dir=/usr/include/ --with-png-dir=/usr/include/ --with-jpeg-dir=/usr/include/" \
	SETUP_PHP_EXT_ICONV_ENABLED="True" \
	SETUP_PHP_EXT_ICONV_DEPENDENCIES="musl musl-dev" \
	SETUP_PHP_EXT_INTL_ENABLED="True" \
	SETUP_PHP_EXT_INTL_CONFIGURE="True" \
	SETUP_PHP_EXT_INTL_DEPENDENCIES="musl musl-dev icu-libs libstdc++" \
	SETUP_PHP_EXT_MYSQLI_ENABLED="True" \
	SETUP_PHP_EXT_MYSQLI_DEPENDENCIES="libxml2-dev" \
	SETUP_PHP_EXT_MBSTRING_ENABLED="True" \
	SETUP_PHP_EXT_PDO_MYSQL_ENABLED="True" \
	SETUP_PHP_EXT_PDO_MYSQL_DEPENDENCIES="libxml2-dev" \
	SETUP_PHP_EXT_MCRYPT_ENABLED="False" \
	SETUP_PHP_EXT_MCRYPT_DEPENDENCIES="libmcrypt-dev libltdl" \
	SETUP_PHP_EXT_OPCACHE_ENABLED="True" \
	SETUP_PHP_EXT_OPCACHE_DEPENDENCIES="musl musl-dev" \
	SETUP_PHP_EXT_READLINE_ENABLED="True" \
	SETUP_PHP_EXT_READLINE_DEPENDENCIES="musl-dev libedit-dev" \
	SETUP_PHP_EXT_REDIS_ENABLED="True" \
	SETUP_PHP_EXT_REDIS_PECL="True" \
	SETUP_PHP_EXT_XDEBUG_ENABLED="False" \
	SETUP_PHP_EXT_XDEBUG_PECL="True" \
	SETUP_PHP_EXT_XDEBUG_VERSION="" \
	SETUP_PHP_EXT_SOAP_ENABLED="True" \
	SETUP_PHP_EXT_SOAP_DEPENDENCIES="libxml2-dev" \
	SETUP_PHP_EXT_SODIUM_ENABLED="True" \
	SETUP_PHP_EXT_SODIUM_DEPENDENCIES="libsodium-dev" \
	SETUP_PHP_EXT_XML_ENABLED="True" \
	SETUP_PHP_EXT_XML_DEPENDENCIES="libxml2-dev" \
	SETUP_PHP_EXT_ZIP_ENABLED="True" \
	SETUP_PHP_EXT_ZIP_DEPENDENCIES="zlib" \
	SETUP_PHP_EXTS="curl gd iconv intl mysqli mbstring pdo_mysql mcrypt opcache readline redis xdebug soap sodium xml zip" \
	CONFIG_REDINESS_TEST="true" \
	CONFIG_LIVENESS_TEST="true" \
	CONFIG_PATHS_CONTAINER_STATUS="/tmp/container_status" \
	CONFIG_GROUPS_ADDITIONAL_ID="1001" \
	CONFIG_GROUPS_ADDITIONAL_NAME="" \
	CONFIG_GROUPS_MAIN_NAME="www-data" \
	CONFIG_GROUPS_MAIN_ID="1082" \
	CONFIG_USERS_ADDITIONAL_ID="1001" \
	CONFIG_USERS_ADDITIONAL_NAME="" \
	CONFIG_USERS_ADDITIONAL_GROUPS="" \
	CONFIG_USERS_MAIN_NAME="www-data" \
	CONFIG_USERS_MAIN_ID="1082" \
	CONFIG_USERS_MAIN_GROUPS="www-data" \
	CONFIG_PHP_EXT_CURL_ENABLED="True" \
	CONFIG_PHP_EXT_CURL_DEPENDENCIES="curl-dev" \
	CONFIG_PHP_EXT_GD_ENABLED="True" \
	CONFIG_PHP_EXT_GD_DEPENDENCIES="freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev musl musl-dev" \
	CONFIG_PHP_EXT_GD_CONFIGURE="True" \
	CONFIG_PHP_EXT_GD_CONFIGURE_ARG=" --with-gd --with-freetype-dir=/usr/include/ --with-png-dir=/usr/include/ --with-jpeg-dir=/usr/include/" \
	CONFIG_PHP_EXT_ICONV_ENABLED="True" \
	CONFIG_PHP_EXT_ICONV_DEPENDENCIES="musl musl-dev" \
	CONFIG_PHP_EXT_INTL_ENABLED="True" \
	CONFIG_PHP_EXT_INTL_CONFIGURE="True" \
	CONFIG_PHP_EXT_INTL_DEPENDENCIES="musl musl-dev icu-libs libstdc++" \
	CONFIG_PHP_EXT_MYSQLI_ENABLED="True" \
	CONFIG_PHP_EXT_MYSQLI_DEPENDENCIES="libxml2-dev" \
	CONFIG_PHP_EXT_MBSTRING_ENABLED="True" \
	CONFIG_PHP_EXT_PDO_MYSQL_ENABLED="True" \
	CONFIG_PHP_EXT_PDO_MYSQL_DEPENDENCIES="libxml2-dev" \
	CONFIG_PHP_EXT_MCRYPT_ENABLED="False" \
	CONFIG_PHP_EXT_MCRYPT_DEPENDENCIES="libmcrypt-dev libltdl" \
	CONFIG_PHP_EXT_OPCACHE_ENABLED="True" \
	CONFIG_PHP_EXT_OPCACHE_DEPENDENCIES="musl musl-dev" \
	CONFIG_PHP_EXT_READLINE_ENABLED="True" \
	CONFIG_PHP_EXT_READLINE_DEPENDENCIES="musl-dev libedit-dev" \
	CONFIG_PHP_EXT_REDIS_ENABLED="True" \
	CONFIG_PHP_EXT_REDIS_PECL="True" \
	CONFIG_PHP_EXT_XDEBUG_ENABLED="False" \
	CONFIG_PHP_EXT_XDEBUG_PECL="True" \
	CONFIG_PHP_EXT_XDEBUG_VERSION="" \
	CONFIG_PHP_EXT_SOAP_ENABLED="True" \
	CONFIG_PHP_EXT_SOAP_DEPENDENCIES="libxml2-dev" \
	CONFIG_PHP_EXT_SODIUM_ENABLED="True" \
	CONFIG_PHP_EXT_SODIUM_DEPENDENCIES="libsodium-dev" \
	CONFIG_PHP_EXT_XML_ENABLED="True" \
	CONFIG_PHP_EXT_XML_DEPENDENCIES="libxml2-dev" \
	CONFIG_PHP_EXT_ZIP_ENABLED="True" \
	CONFIG_PHP_EXT_ZIP_DEPENDENCIES="zlib" \
	CONFIG_PHP_EXTS="curl gd iconv intl mysqli mbstring pdo_mysql mcrypt opcache readline redis xdebug soap sodium xml zip" \
	CONFIG_PHP_PATHS_CONFIG_PHP_FPM_FOLDER="/usr/local/etc/php-fpm.d" \
	CONFIG_PHP_POOL_NAME="www" \
	CONFIG_PHP_POOL_USER="www-data" \
	CONFIG_PHP_POOL_GROUP="www-data" \
	CONFIG_PHP_POOL_LISTEN_HOST="127.0.0.1" \
	CONFIG_PHP_POOL_LISTEN_PORT="9000"
ADD imports/bin/docker-config /usr/local/bin/docker-config
ADD imports/bin/docker-run /usr/local/bin/docker-run
ADD imports/bin/docker-rediness-test /usr/local/bin/docker-rediness-test
ADD imports/bin/docker-liveness-test /usr/local/bin/docker-liveness-test
ADD imports/bin/setup /usr/local/bin/setup/1519337226
ADD imports/bin/config /usr/local/bin/config/1519337226
ADD imports/templates/pool.conf /usr/local/templates/pool.conf


RUN chmod +x -R /usr/local/bin && \
    sync && \
    /usr/local/bin/setup/1519337226 1>/dev/stdout 2>/dev/stderr

EXPOSE 9000 


ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/usr/local/bin/docker-run"]

LABEL \
    org.label-schema.vcs-ref="$BUILD_COMMIT" \
    org.label-schema.vcs-url="https://github.com/alphaSocket/dockerized-php-fpm-alpine"