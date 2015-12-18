FROM hanfeng/docker-drupal8

ENV MYSQL_ENV_MYSQL_DATABASE somedb  
ENV MYSQL_ENV_MYSQL_USER root  
ENV MYSQL_ENV_MYSQL_PASSWORD 123  
ENV MYSQL_PORT_3306_TCP_ADDR localhost  
ENV MYSQL_PORT_3306_TCP_PORT 3306  
ENV BASE_URL http://example.com  
ENV DRUPAL_ENVIRONMENT production

EXPOSE 80


RUN usermod -u 1000 www-data  
RUN usermod -a -G users www-data

ADD ./application /var/www  
RUN chown -R www-data:www-data /var/www 
