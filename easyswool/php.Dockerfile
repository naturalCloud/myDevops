FROM  php:7.4.30-fpm-buster


RUN  rm -rf /etc/apt/sources.list && echo 'deb http://mirrors.ustc.edu.cn/debian buster main contrib non-free\n\
           deb http://mirrors.ustc.edu.cn/debian buster-updates main contrib non-free\n \
           deb http://mirrors.ustc.edu.cn/debian buster-backports main contrib non-free\n\
           deb http://mirrors.ustc.edu.cn/debian-security/ buster/updates main contrib non-free\n' \
        >> /etc/apt/sources.list


RUN   apt-get update && apt-get install -y zlib1g-dev && apt-get install -y libzip-dev  \
      && apt-get -y install  git


RUN  docker-php-ext-install zip && docker-php-ext-install pdo_mysql && docker-php-ext-install sockets \
     && docker-php-ext-install -j$(nproc) bcmath


RUN pecl install redis \
    && docker-php-ext-enable redis \
    && pecl install swoole-4.5.7 \
    && docker-php-ext-enable swoole



RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
        && composer config -g repo.packagist composer https://packagist.phpcomposer.com

RUN  apt-get install -y  libboost-all-dev &&  cd && git clone https://github.com/swoole/yasd.git && cd yasd && phpize --clean && \
       phpize && ./configure && make clean && make && make install && docker-php-ext-enable yasd

RUN  apt-get install -y  zsh && chsh -s $(which zsh) && sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"