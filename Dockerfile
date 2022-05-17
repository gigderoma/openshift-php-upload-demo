FROM php:7.4-apache
WORKDIR /var/www/html

COPY index.php index.php
COPY info.php info.php
COPY listfiles.php listfiles.php
COPY upload.php upload.php
COPY css/ css
COPY includes/ includes
COPY uploaded/ uploaded
RUN chmod -Rf 777 uploaded
RUN sed -i "s/Listen 80/Listen 8080/" /etc/apache2/ports.conf 

EXPOSE 8880

USER 1001


