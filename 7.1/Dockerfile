FROM php:7.1-cli-alpine

RUN apk add --no-cache \
    bash \
    git \
    openssh \
    wget \
    autoconf \
    g++ \
    make \
    postgresql-dev \
    zlib-dev

# ssh should say nothing ?
RUN echo '    StrictHostKeyChecking no' >> /etc/ssh/ssh_config

RUN docker-php-ext-install \
    zip \
    pgsql \
    pdo_pgsql

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

# Composer
COPY install-composer.sh /usr/local/bin/install-composer.sh
RUN install-composer.sh

COPY php.ini-development /usr/local/etc/php/php.ini

ENTRYPOINT ["docker-php-entrypoint"]

CMD ["php", "-a"]
