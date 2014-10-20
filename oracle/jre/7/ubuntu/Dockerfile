FROM      ubuntu

######## INSTALL JAVA #################
#ADD JAVA REPO
COPY webup8team-java-trusty.list /etc/apt/sources.list.d/webup8team-java-trusty.list
RUN 	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886 && \
	apt-get update && \
	echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
	echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections && \
	apt-get install -y oracle-java7-installer && \
	apt-get clean

####### END JAVA INSTALL ##############
