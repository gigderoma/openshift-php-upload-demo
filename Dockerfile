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

EXPOSE 80

USER 1001


