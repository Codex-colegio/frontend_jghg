FROM php:8.2-apache

# Instalar extensiones necesarias
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Habilitar mod_rewrite si usas .htaccess
RUN a2enmod rewrite

# Copiar tu aplicación (esto es redundante si usas volumen, pero útil en algunos casos)
COPY . /var/www/html/

# Dar permisos a Apache
RUN chown -R www-data:www-data /var/www/html
