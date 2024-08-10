FROM php:8.3-fpm

RUN apt-get update && apt-get install -y \
  imagemagick \
  libfreetype6-dev \
  libjpeg62-turbo-dev \
  libmagickwand-dev --no-install-recommends \
  libpng-dev \
  && docker-php-ext-install mysqli \
  && docker-php-ext-install pdo pdo_mysql

# Указываем рабочую директорию для PHP
WORKDIR /var/www

CMD ["php-fpm"]
