FROM php:5.6-fpm

RUN  rm -rf /etc/apt/sources.list && echo 'deb http://mirrors.ustc.edu.cn/debian buster main contrib non-free\n\
           deb http://mirrors.ustc.edu.cn/debian buster-updates main contrib non-free\n \
           deb http://mirrors.ustc.edu.cn/debian buster-backports main contrib non-free\n\
           deb http://mirrors.ustc.edu.cn/debian-security/ buster/updates main contrib non-free\n' \
        >> /etc/apt/sources.list


RUN   apt-get update && apt-get install -y zlib1g-dev && apt-get install -y libzip-dev  \
      && apt-get -y install  git
