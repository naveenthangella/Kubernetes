FROM centos:7
RUN yum install httpd -y
RUN echo Hello from v1 >/var/www/html/index.html
CMD httpd -DFOREGROUND