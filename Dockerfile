FROM php:7.1-fpm
WORKDIR /var/www/samplephpwebsite
RUN apt-get update && apt-get install wget -y
# install phpunit
RUN wget https://phar.phpunit.de/phpunit-6.5.phar && chmod +x phpunit-6.5.phar && mv phpunit-6.5.phar /usr/local/bin/phpunit
RUN phpunit --version
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN docker-php-ext-install gd && docker-php-ext-enable gd
