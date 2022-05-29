FROM centos:latest
#update and install nginx section
RUN yum update -y
RUN yum install -y epel-release
RUN yum install -y nginx
RUN yum install -y vim
#create path and add index.html
WORKDIR /usr/share/nginx/html
RUN rm index.html
RUN touch index.html
EXPOSE 80/tcp
CMD ["nginx", "-g", "daemon off;"]
