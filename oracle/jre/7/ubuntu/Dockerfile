FROM      ubuntu

######## INSTALL JAVA #################
#ADD JAVA REPO
#RUN apt-get install -y software-properties-common python-software-properties
#RUN add-apt-repository ppa:webupd8team/java
COPY webup8team-java-trusty.list /etc/apt/sources.list.d/webup8team-java-trusty.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886
RUN apt-get update

#ACCEPT JAVA LICENSE
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

#INSTALL JAVA
RUN apt-get install -y oracle-java7-installer

####### END JAVA INSTALL ##############
