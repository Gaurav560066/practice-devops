FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
ADD . /var/www/html
EXPOSE 80
ENTRYPOINT ["apache2ctl", "-D", "FOREGROUND"]
