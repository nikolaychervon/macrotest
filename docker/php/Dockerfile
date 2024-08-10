FROM php:8.3-fpm

RUN apt-get update && apt-get install -y \
  libpng-dev \
  zip unzip \
  && docker-php-ext-install mysqli \
  && docker-php-ext-install pdo pdo_mysql

# Указываем рабочую директорию для PHP
WORKDIR /var/www/public

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

CMD ["php-fpm"]
