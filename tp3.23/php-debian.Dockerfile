FROM  amd64/php:5.6-fpm-jessie






# 阿里源

RUN echo "deb http://mirrors.aliyun.com/debian jessie main contrib non-free" > /etc/apt/sources.list && \
    echo "deb-src http://mirrors.aliyun.com/debian jessie main contrib non-free" >> /etc/apt/sources.list  && \
    echo "deb http://mirrors.aliyun.com/debian jessie-updates main contrib non-free" >> /etc/apt/sources.list && \
    echo "deb-src http://mirrors.aliyun.com/debian jessie-updates main contrib non-free" >> /etc/apt/sources.list && \
    echo "deb http://mirrors.aliyun.com/debian-security jessie/updates main contrib non-free" >> /etc/apt/sources.list && \
    echo "deb-src http://mirrors.aliyun.com/debian-security jessie/updates main contrib non-free" >> /etc/apt/sources.list


ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN  chmod +x /usr/local/bin/install-php-extensions

RUN     install-php-extensions bcmath pdo_mysql pdo_sqlite memcache memcached mysqli mysqlnd redis  zip  mongodb msgpack exif  mcrypt

RUN docker-php-ext-install opcache


