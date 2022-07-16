FROM  php:5.6-fpm-alpine

ENV CONTAINER_PACKAGE_URL="mirrors.ustc.edu.cn"
RUN  sed -i "s/dl-cdn.alpinelinux.org/${CONTAINER_PACKAGE_URL}/g" /etc/apk/repositories



ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/





RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions bcmath pdo_mysql pdo_sqlite memcache memcached mysqli mysqlnd redis  zip  mongodb msgpack exif mycrypt