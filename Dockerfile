FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y apache2

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2

RUN ln -sf /dev/stdout /var/log/apache2/access.log && \
    ln -sf /dev/stderr /var/log/apache2/error.log
RUN mkdir -p $APACHE_RUN_DIR $APACHE_LOCK_DIR $APACHE_LOG_DIR

# Install PHP 8.1 with specific packages
RUN apt-get install -y curl php8.1-fpm libapache2-mod-php8.1 php8.1 php8.1-common php8.1-xml php8.1-mysql php8.1-gd php8.1-mbstring php8.1-tokenizer php8.1-bcmath php8.1-curl php8.1-zip unzip && a2enmod rewrite

# Assuming you have an apache.conf configured for PHP 8.1
COPY apache.conf /etc/apache2/sites-available/000-default.conf

# Install Composer
RUN curl -sS https://getcomposer.org/installer -o composer-setup.php
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer

# Volume for your application code
VOLUME [ "/var/www/html" ]
WORKDIR /var/www/html

RUN chown -R www-data:www-data /var/www/html

EXPOSE 80

ENTRYPOINT [ "/usr/sbin/apache2" ]
CMD ["-D", "FOREGROUND"]
