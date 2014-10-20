FROM      oracle/ub_jre_v7

#INSTALL WGET(might can remove this and just use COPY)change
RUN apt-get install -y wget

####### TOMCAT INSTALL ###############

#CREATE TOMCAT USER
RUN useradd tomcat

#CREATE TOMCAT HOME
RUN mkdir -p /opt/tomcat
RUN chown -R tomcat:tomcat /opt/tomcat

#ADD STARTUP SERVICE
ADD tomcat.sh /etc/init.d/tomcat
RUN chmod 755 /etc/init.d/tomcat

#SWITCH USER
USER tomcat

#INSTALL TOMCAT
WORKDIR /opt/tomcat
RUN wget http://apache.arvixe.com/tomcat/tomcat-7/v7.0.56/bin/apache-tomcat-7.0.56.tar.gz
RUN gunzip apache-tomcat-7.0.56.tar.gz
RUN tar -xvf apache-tomcat-7.0.56.tar
RUN ln -s apache-tomcat-7.0.56 active
######## END TOMCAT INSTALL ###########

WORKDIR /opt/tomcat/active/bin

#EXPOSE PORT
#EXPOSE 8080
  
#DEFAULT COMMAND
USER root
ENTRYPOINT service tomcat start && tail -f /opt/tomcat/active/logs/catalina.out
