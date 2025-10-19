FROM php:7.4-apache

RUN apt-get update && apt-get install -y \
      libpng-dev \
      && docker-php-ext-install mysqli pdo pdo_mysql

# Copy app source into container
COPY ./app /var/www/html/

# Set environment variable pointing to your DB service name
ENV DB_HOST=mariadb-service
ENV DB_NAME=ecomdb
ENV DB_USER=ecomuser
ENV DB_PASS=ecompassword

EXPOSE 80
