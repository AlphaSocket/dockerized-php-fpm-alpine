#
# Do not change content here, image automatically built
#
FROM php:7.1-fpm-alpine

ARG BUILD_COMMIT
ARG BUILD_TIME

ENV \
	 BUILD_COMMIT=$BUILD_COMMIT \
	 BUILD_DATE=$BUILD_DATE \
	GENERAL_DOCKER_USER="03192859189254" \
	GENERAL_KEYS_TRUE="True" \
	GENERAL_KEYS_FALSE="False" \
	GENERAL_KEYS_DEV="dev" \
	GENERAL_KEYS_PRD="prd" \
	BUILD_NAME="php-fpm-alpine" \
	BUILD_BRANCH="7.1-dev" \
	BUILD_COMMIT="ac48d76" \
	BUILD_VERSION="7.1" \
	BUILD_ENV="dev" \
	BUILD_PHP_VERSION="7.1" \
	BUILD_PHP_FPM_PORT="9000" \
	BUILD_PHP_XDEBUG_PORT="9001" \
	BUILD_DOCKERFILE_IMAGE="php:7.1-fpm-alpine" \
	BUILD_DOCKERFILE_PORTS_MAIN="9000" \
	BUILD_DOCKERFILE_PORTS_ADDITIONAL="9001" \
	BUILD_DOCKERFILE_CMD="/usr/local/bin/docker-php-entrypoint php-fpm" \
	SETUP_DEPENDENCIES_SETUP="binutils-libs binutils m4 perl autoconf libmagic file libgcc libstdc++ gmp libgomp libatomic mpfr3 gcc libc-dev g++ make re2c" \
	SETUP_DEPENDENCIES_CONFIG="" \
	SETUP_PHP_EXT_CURL="True" \
	SETUP_PHP_EXT_GD="True" \
	SETUP_PHP_EXT_ICONV="True" \
	SETUP_PHP_EXT_MYSQLI="True" \
	SETUP_PHP_EXT_MBSTRING="True" \
	SETUP_PHP_EXT_MCRYPT="True" \
	SETUP_PHP_EXT_OPCACHE="True" \
	SETUP_PHP_EXT_READLINE="True" \
	SETUP_PHP_EXT_REDIS="True" \
	SETUP_PHP_EXT_SOAP="True" \
	SETUP_PHP_EXT_SODIUM="False" \
	SETUP_PHP_EXT_XML="True" \
	SETUP_PHP_EXT_XDEBUG="True" \
	SETUP_PHP_EXT_ZIP="True" \
	CONFIG_PHP_EXT_CURL="True" \
	CONFIG_PHP_EXT_GD="True" \
	CONFIG_PHP_EXT_ICONV="True" \
	CONFIG_PHP_EXT_MYSQLI="True" \
	CONFIG_PHP_EXT_MBSTRING="True" \
	CONFIG_PHP_EXT_MCRYPT="True" \
	CONFIG_PHP_EXT_OPCACHE="True" \
	CONFIG_PHP_EXT_READLINE="True" \
	CONFIG_PHP_EXT_REDIS="True" \
	CONFIG_PHP_EXT_SOAP="True" \
	CONFIG_PHP_EXT_SODIUM="False" \
	CONFIG_PHP_EXT_XML="True" \
	CONFIG_PHP_EXT_XDEBUG="True" \
	CONFIG_PHP_EXT_ZIP="True"

ADD envvars /usr/local/envvars
ADD bin/setup /usr/local/bin/setup
ADD bin/config /usr/local/bin/config

RUN chmod +rx /usr/local/bin/setup && \
    chmod +rx /usr/local/bin/config && \
    sync && \
    /usr/local/bin/setup 

EXPOSE 9000 9001

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/usr/local/bin/config && /usr/local/bin/docker-php-entrypoint php-fpm"]

LABEL \
    org.label-schema.vcs-ref=ac48d76 \
    org.label-schema.vcs-url="https://github.com/AlphaSocket/dockerized-php-fpm-alpine"