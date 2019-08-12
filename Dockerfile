FROM ubuntu:18.04
MAINTAINER gopinadh
RUN apt update -y 
RUN apt install apache2 -y
WORKDIR  /var/www/html/
EXPOSE 80
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/apache2ctl"]
