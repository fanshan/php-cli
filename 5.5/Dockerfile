FROM php:5.5-cli

RUN apt-get update && apt-get install -y \
    git \
    wget \
    zlib1g-dev

RUN docker-php-ext-install \
    zip

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

# Composer
COPY install-composer.sh /usr/local/bin/install-composer.sh
RUN install-composer.sh

COPY php.ini-development /usr/local/etc/php/php.ini

COPY docker-php-entrypoint /usr/local/bin/

ENTRYPOINT ["docker-php-entrypoint"]

CMD ["php"]
