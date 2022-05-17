FROM php:7.4-apache
WORKDIR /var/www/html

COPY index.php index.php
COPY info.php infor.php
COPY lastfiles.php lastfiles.php
COPY upload.php upload.php
COPY css/ css
COPY includes/ includes
COPY uploaded/ uploaded
EXPOSE 80

USER 1001


