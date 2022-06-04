FROM nginx:1.15

COPY ./app.conf /etc/nginx/conf.d/app.conf
