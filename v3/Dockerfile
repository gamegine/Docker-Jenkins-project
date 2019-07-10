FROM php:7.1-fpm
WORKDIR /var/www/samplephpwebsite
RUN apt-get update && apt-get install wget -y

# install phpunit
RUN wget https://phar.phpunit.de/phpunit-6.5.phar && chmod +x phpunit-6.5.phar && mv phpunit-6.5.phar /usr/local/bin/phpunit
RUN phpunit --version

#install php ext
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get update -y && apt-get install -y libpng-dev
RUN docker-php-ext-install gd && docker-php-ext-enable gd
