FROM php:8.0-fpm-buster

RUN pecl install redis \
    && docker-php-ext-enable redis


RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
        && composer config -g repo.packagist composer https://packagist.phpcomposer.com \
