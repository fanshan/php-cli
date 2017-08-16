FROM php:7.0-alpine

RUN apk add --no-cache \
    bash \
    git \
    wget \
    zlib-dev

RUN docker-php-ext-install \
    zip

# Composer
COPY install-composer.sh /usr/local/bin/install-composer.sh
RUN install-composer.sh

COPY php.ini-development /usr/local/etc/php/php.ini

CMD ["php"]