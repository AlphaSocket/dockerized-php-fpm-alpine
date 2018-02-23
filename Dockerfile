#
# Do not change content here, image automatically built
#
FROM php:7.0-fpm-alpine

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
	BUILD_BRANCH="7.0-dev" \
	BUILD_VERSION="7.0-dev" \
	BUILD_ENV="dev" \
	BUILD_GROUPS_MAIN_ID="1082" \
	BUILD_GROUPS_MAIN_NAME="www-data" \
	BUILD_USERS_MAIN_ID="1082" \
	BUILD_USERS_MAIN_NAME="www-data" \
	BUILD_USERS_MAIN_GROUPS="www-data" \
	BUILD_NAME="php-fpm-alpine" \
	BUILD_PHP_VERSION="7.0" \
	BUILD_PHP_FPM_PORT="9000" \
	BUILD_PHP_XDEBUG_PORT="9001" \
	BUILD_FROM="php:7.0-fpm-alpine" \
	BUILD_PORTS_MAIN="9000" \
	BUILD_PORTS_ADDITIONAL="9001" \
	BUILD_CMD="/usr/local/bin/docker-php-entrypoint php-fpm" \
	BUILD_PATHS_TEMPLATES="/usr/local/templates" \
	SETUP_PATHS_BINARIES="/usr/local/bin" \
	SETUP_PATHS_SETUP="/usr/local/bin/setup" \
	SETUP_PATHS_CONFIG="/usr/local/bin/config" \
	SETUP_DEPENDENCIES_SETUP="binutils-libs binutils m4 perl autoconf file libgcc gmp mpfr3 gcc g++ make re2c libatomic libstdc++ libmagic libc-dev dpkg-dev libbz2 dpkg zlib-dev icu-dev" \
	SETUP_DEPENDENCIES_CONFIG="" \
	SETUP_DEPENDENCIES_RUNTIME="" \
	SETUP_PHP_EXT_CURL_ENABLED="True" \
	SETUP_PHP_EXT_CURL_DEPENDENCIES="curl-dev" \
	SETUP_PHP_EXT_GD_ENABLED="True" \
	SETUP_PHP_EXT_GD_DEPENDENCIES="freetype freetype-dev libjpeg-turbo libjpeg-turbo-dev libpng libpng-dev musl musl-dev" \
	SETUP_PHP_EXT_GD_CONFIGURE="True" \
	SETUP_PHP_EXT_GD_CONFIGURE_ARG="--with-gd --with-freetype-dir=/usr/include/ --with-png-dir=/usr/include/ --with-jpeg-dir=/usr/include/" \
	SETUP_PHP_EXT_ICONV_ENABLED="True" \
	SETUP_PHP_EXT_ICONV_DEPENDENCIES="musl musl-dev" \
	SETUP_PHP_EXT_INTL_ENABLED="True" \
	SETUP_PHP_EXT_INTL_DEPENDENCIES="musl musl-dev icu-libs libstdc++" \
	SETUP_PHP_EXT_MYSQLI_ENABLED="True" \
	SETUP_PHP_EXT_MYSQLI_DEPENDENCIES="libxml2-dev" \
	SETUP_PHP_EXT_MBSTRING_ENABLED="True" \
	SETUP_PHP_EXT_PDO_MYSQL_ENABLED="True" \
	SETUP_PHP_EXT_PDO_MYSQL_DEPENDENCIES="libxml2-dev" \
	SETUP_PHP_EXT_MCRYPT_ENABLED="True" \
	SETUP_PHP_EXT_MCRYPT_DEPENDENCIES="libmcrypt-dev libltdl" \
	SETUP_PHP_EXT_OPCACHE_ENABLED="True" \
	SETUP_PHP_EXT_OPCACHE_DEPENDENCIES="musl musl-dev" \
	SETUP_PHP_EXT_READLINE_ENABLED="True" \
	SETUP_PHP_EXT_READLINE_DEPENDENCIES="musl-dev libedit-dev" \
	SETUP_PHP_EXT_REDIS_ENABLED="True" \
	SETUP_PHP_EXT_REDIS_PECL="True" \
	SETUP_PHP_EXT_XDEBUG_ENABLED="True" \
	SETUP_PHP_EXT_XDEBUG_PECL="True" \
	SETUP_PHP_EXT_XDEBUG_VERSION="" \
	SETUP_PHP_EXT_SOAP_ENABLED="True" \
	SETUP_PHP_EXT_SOAP_DEPENDENCIES="libxml2-dev" \
	SETUP_PHP_EXT_SODIUM_ENABLED="False" \
	SETUP_PHP_EXT_SODIUM_DEPENDENCIES="libsodium libsodium-dev" \
	SETUP_PHP_EXT_XML_ENABLED="True" \
	SETUP_PHP_EXT_XML_DEPENDENCIES="libxml2-dev" \
	SETUP_PHP_EXT_ZIP_ENABLED="True" \
	SETUP_PHP_EXT_ZIP_DEPENDENCIES="zlib" \
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
	CONFIG_PHP_EXT_GD_ENABLED="True" \
	CONFIG_PHP_EXT_ICONV_ENABLED="True" \
	CONFIG_PHP_EXT_INTL_ENABLED="False" \
	CONFIG_PHP_EXT_MYSQLI_ENABLED="True" \
	CONFIG_PHP_EXT_MBSTRING_ENABLED="True" \
	CONFIG_PHP_EXT_PDO_MYSQL_ENABLED="True" \
	CONFIG_PHP_EXT_MCRYPT_ENABLED="True" \
	CONFIG_PHP_EXT_OPCACHE_ENABLED="True" \
	CONFIG_PHP_EXT_READLINE_ENABLED="True" \
	CONFIG_PHP_EXT_REDIS_ENABLED="True" \
	CONFIG_PHP_EXT_XDEBUG_ENABLED="True" \
	CONFIG_PHP_EXT_SOAP_ENABLED="True" \
	CONFIG_PHP_EXT_SODIUM_ENABLED="False" \
	CONFIG_PHP_EXT_XML_ENABLED="True" \
	CONFIG_PHP_EXT_ZIP_ENABLED="True" \
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
ADD imports/bin/setup /usr/local/bin/setup/1519404234
ADD imports/bin/config /usr/local/bin/config/1519404234
ADD imports/templates/pool.conf /usr/local/templates/pool.conf


RUN chmod +x -R /usr/local/bin && \
    sync && \
    /usr/local/bin/setup/1519404234 1>/dev/stdout 2>/dev/stderr

EXPOSE 9000 9001


ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/usr/local/bin/docker-run"]

LABEL \
    org.label-schema.vcs-ref="$BUILD_COMMIT" \
    org.label-schema.vcs-url="https://github.com/alphaSocket/dockerized-php-fpm-alpine"