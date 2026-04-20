FROM php:8.2-apache

RUN docker-php-ext-install pdo pdo_mysql

COPY . /var/www/html

RUN a2enmod rewrite

WORKDIR /var/www/html

RUN apt-get update && apt-get install -y unzip git curl
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

RUN composer install --no-dev --optimize-autoloader

RUN cp .env.example .env || true
RUN php artisan key:generate || true

EXPOSE 80