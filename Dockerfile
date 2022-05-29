FROM centos:latest
MAINTAINER rahul9913102258@gmail.com
RUN yum install -y httpd\
 zip\
unzip
ADD  https://www.free-css.com/assets/files/free-css-templates/download/page275/wedding-v1.0.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip wedding-v1.0.zip
RUN cp -rvf wedding-site-template-1.0/* .
RUN rm -rf wedding-site-template-1.0 wedding-v1.0.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
