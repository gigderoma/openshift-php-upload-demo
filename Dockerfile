FROM php:7.4-apache
WORKDIR /var/www/html

COPY index.php index.php
COPY info.php info.php
COPY listfiles.php listfiles.php
COPY upload.php upload.php
COPY css/ css
COPY includes/ includes

RUN sed -i "s/Listen 80/Listen 8880/" /etc/apache2/ports.conf 


EXPOSE 8880

USER 99:99
