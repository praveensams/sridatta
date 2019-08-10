FROM centos
MAINTAINER praveen

RUN yum install git -y \
    && yum install vim -y \
    && yum install httpd -y

COPY index.html /var/www/html/

CMD ["httpd","-D","FOREGROUND"]



