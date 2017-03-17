FROM webdevops/php-nginx:ubuntu-16.04


RUN curl -s https://packagecloud.io/install/repositories/phalcon/stable/script.deb.sh | bash
RUN apt-get update && apt-get install -y \
                        php7.0-phalcon

COPY default.conf /opt/docker/etc/nginx/conf.d/default.conf
