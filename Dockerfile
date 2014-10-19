FROM      ubuntu

#INSTALL WGET(might can remove this and just use COPY)
RUN apt-get update && apt-get install -y wget

######## INSTALL JAVA #################
#ADD JAVA REPO
RUN apt-get install -y software-properties-common python-software-properties
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update

#ACCEPT JAVA LICENSE
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

#INSTALL JAVA
RUN apt-get install -y oracle-java7-installer

####### END JAVA INSTALL ##############

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
RUN wget http://apache.arvixe.com/tomcat/tomcat-7/v7.0.56/bin/apache-tomcat-7.0.56.tar.gz
RUN gunzip apache-tomcat-7.0.56.tar.gz
RUN tar -xvf apache-tomcat-7.0.56.tar
RUN ln -s apache-tomcat-7.0.56 active
######## END TOMCAT INSTALL ###########

WORKDIR /opt/tomcat/active/bin
