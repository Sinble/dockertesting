FROM      oracle/ub_jre_v7

####### TOMCAT INSTALL ###############

ADD tomcat.sh /etc/init.d/tomcat
ADD http://apache.arvixe.com/tomcat/tomcat-7/v7.0.56/bin/apache-tomcat-7.0.56.tar.gz .//

#CREATE TOMCAT USER
RUN 	useradd tomcat && \
	mkdir -p /opt/tomcat && \
	tar -zxvf apache-tomcat-7.0.56.tar.gz -C /opt/tomcat/ && \
	rm apache-tomcat-7.0.56.tar.gz && \
	ln -s /opt/tomcat/apache-tomcat-7.0.56 /opt/tomcat/active && \
	chown -R tomcat:tomcat /opt/tomcat && \
        chmod 755 /etc/init.d/tomcat 

#EXPOSE PORT
#EXPOSE 8080
  
#DEFAULT COMMAND
USER root
ENTRYPOINT service tomcat start && tail -f /opt/tomcat/active/logs/catalina.out
