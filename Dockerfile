FROM centos:7
RUN mkdir /opt
WORKDIR /opt
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.63/bin/apache-tomcat-9.0.63.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.63.tar.gz
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
