#
# Do not change content here, image automatically built
#
FROM php:5.6-fpm-alpine

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
	BUILD_BRANCH="5.6" \
	BUILD_VERSION="5.6" \
	BUILD_ENV="prd" \
	BUILD_GROUPS_MAIN_NAME="www-data" \
	BUILD_USERS_MAIN_NAME="www-data" \
	BUILD_USERS_MAIN_GROUPS="www-data" \
	BUILD_NAME="php-fpm-alpine" \
	BUILD_PHP_VERSION="5.6" \
	BUILD_PHP_FPM_PORT="9000" \
	BUILD_PHP_XDEBUG_PORT="9001" \
	BUILD_FROM="php:5.6-fpm-alpine" \
	BUILD_PORTS_MAIN="9000" \
	BUILD_PORTS_ADDITIONAL="" \
	BUILD_CMD="/usr/local/bin/docker-php-entrypoint php-fpm" \
	BUILD_PATHS_TEMPLATES="/usr/local/templates" \
	SETUP_PATHS_BINARIES="/usr/local/bin" \
	SETUP_PATHS_SETUP="/usr/local/bin/setup" \
	SETUP_PATHS_CONFIG="/usr/local/bin/config" \
	SETUP_DEPENDENCIES_SETUP="binutils-libs binutils m4 perl autoconf libmagic file libgcc libstdc++ gmp libgomp libatomic mpfr3 gcc libc-dev g++ make re2c" \
	SETUP_DEPENDENCIES_CONFIG="gettext" \
	SETUP_PHP_EXT_CURL="True" \
	SETUP_PHP_EXT_GD="True" \
	SETUP_PHP_EXT_ICONV="True" \
	SETUP_PHP_EXT_MYSQLI="True" \
	SETUP_PHP_EXT_MBSTRING="True" \
	SETUP_PHP_EXT_PDO_MYSQL="True" \
	SETUP_PHP_EXT_MCRYPT="True" \
	SETUP_PHP_EXT_OPCACHE="True" \
	SETUP_PHP_EXT_READLINE="True" \
	SETUP_PHP_EXT_REDIS="True" \
	SETUP_PHP_EXT_SOAP="True" \
	SETUP_PHP_EXT_SODIUM="False" \
	SETUP_PHP_EXT_XML="True" \
	SETUP_PHP_EXT_XDEBUG="False" \
	SETUP_PHP_EXT_ZIP="True" \
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
	CONFIG_PHP_EXT_CURL="True" \
	CONFIG_PHP_EXT_GD="True" \
	CONFIG_PHP_EXT_ICONV="True" \
	CONFIG_PHP_EXT_MYSQLI="True" \
	CONFIG_PHP_EXT_MBSTRING="True" \
	CONFIG_PHP_EXT_PDO_MYSQL="True" \
	CONFIG_PHP_EXT_MCRYPT="True" \
	CONFIG_PHP_EXT_OPCACHE="True" \
	CONFIG_PHP_EXT_READLINE="True" \
	CONFIG_PHP_EXT_REDIS="True" \
	CONFIG_PHP_EXT_SOAP="True" \
	CONFIG_PHP_EXT_SODIUM="False" \
	CONFIG_PHP_EXT_XML="True" \
	CONFIG_PHP_EXT_XDEBUG="False" \
	CONFIG_PHP_EXT_ZIP="True" \
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
ADD imports/bin/setup /usr/local/bin/setup/1519169234
ADD imports/bin/config /usr/local/bin/config/1519169234
ADD imports/templates/pool.conf /usr/local/templates/pool.conf


RUN chmod +x -R /usr/local/bin && \
    sync && \
    /usr/local/bin/setup/1519169234 1>/dev/stdout 2>/dev/stderr

EXPOSE 9000 


ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/usr/local/bin/docker-run"]

LABEL \
    org.label-schema.vcs-ref="$BUILD_COMMIT" \
    org.label-schema.vcs-url="https://github.com/alphaSocket/dockerized-php-fpm-alpine"