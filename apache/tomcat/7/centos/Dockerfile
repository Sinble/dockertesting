FROM      openjdk/co_jre_v7

#INSTALL WGET(might can remove this and just use COPY)change
RUN yum install -y wget
RUN yum install -y tar

####### TOMCAT INSTALL ###############

#CREATE TOMCAT USER
RUN useradd tomcat

#CREATE TOMCAT HOME
RUN mkdir -p /opt/tomcat
RUN chown -R tomcat:tomcat /opt/tomcat

#SWITCH USER
USER tomcat

#INSTALL TOMCAT
WORKDIR /opt/tomcat
RUN wget http://archive.apache.org/dist/tomcat/tomcat-7/v7.0.56/bin/apache-tomcat-7.0.56.tar.gz
RUN gunzip apache-tomcat-7.0.56.tar.gz
RUN tar -xvf apache-tomcat-7.0.56.tar
RUN ln -s apache-tomcat-7.0.56 active
######## END TOMCAT INSTALL ###########

WORKDIR /opt/tomcat/active/bin
