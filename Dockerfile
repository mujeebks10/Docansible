FROM centos
MAINTAINER mujeebks10
RUN yum install httpd -y
RUN yum clean all
RUN echo "The Web Server is Running" > /var/www/html/index.html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]
