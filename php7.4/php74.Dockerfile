FROM  php:7.4.30-fpm-buster


#ENV CONTAINER_PACKAGE_URL="mirrors.ustc.edu.cn"
#RUN  sed -i "s/dl-cdn.alpinelinux.org/${CONTAINER_PACKAGE_URL}/g" /etc/apk/repositories

ADD ./install-php-extensions /usr/local/bin/

RUN  chmod +x /usr/local/bin/install-php-extensions

#RUN   pear config-set http_proxy 192.168.0.103:10808 && pecl config-set http_proxy 192.168.0.103:10808


RUN     install-php-extensions bcmath  redis  zip  mongodb  exif   gd

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
        && composer config -g repo.packagist composer https://packagist.phpcomposer.com \