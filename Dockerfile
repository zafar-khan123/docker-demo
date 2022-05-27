FROM centos:7
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.63/bin/apache-tomcat-9.0.63.tar.gz /var/www/html
WORKDIR /var/www/html
RUN tar -xvzf apache-tomcat-9.0.63.tar.gz
RUN cp -rvf apache-tomcat-9.0.63/*
EXPOSE 8080
CMD ["/usr/sbin/httpd", "run"]
