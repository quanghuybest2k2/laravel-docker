FROM ubuntu:22.04

RUN apt-get update -y

#Installing apache in non-interactive mode
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get install apache2 -y

#Installing PHP v 8.2
RUN apt-get -y install software-properties-common && \
    add-apt-repository ppa:ondrej/php && \
    apt-get update && \
    apt-get -y install php8.2

#Install required PHP extensions
RUN apt-get install -y php8.2-bcmath php8.2-fpm php8.2-xml php8.2-mysql php8.2-zip php8.2-intl php8.2-ldap php8.2-gd php8.2-cli php8.2-bz2 php8.2-curl php8.2-mbstring php8.2-pgsql php8.2-opcache php8.2-soap php8.2-cgi

# RUN docker-php-ext-install pdo pdo_mysql

#Install Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
