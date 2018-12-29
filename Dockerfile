FROM php:7.2.13-fpm-alpine
RUN apk update && apk add libpng-dev gettext-dev gmp-dev icu icu-dev libmcrypt-dev libxml2-dev libxslt-dev autoconf
RUN docker-php-ext-install -j4 calendar exif gd gettext gmp intl mysqli opcache pcntl pdo_mysql shmop sockets sysvmsg sysvsem sysvshm wddx xmlrpc xsl zip
RUN apk add g++ gcc make imagemagick-dev imagemagick pcre-dev libltdl libtool
RUN pecl install igbinary imagick redis mcrypt-1.0.1
RUN docker-php-ext-enable igbinary imagick redis mcrypt
