FROM php:7.2-cli-alpine

RUN apk add --no-cache \
    bash \
    git \
    wget \
    autoconf \
    g++ \
    make \
    zlib-dev

RUN docker-php-ext-install \
    zip

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

# Composer
COPY install-composer.sh /usr/local/bin/install-composer.sh
RUN install-composer.sh

COPY php.ini-development /usr/local/etc/php/php.ini

CMD ["php"]
