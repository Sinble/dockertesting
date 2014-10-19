dockertesting
=============

Objective:<br>
  Play around with docker. 

What will this image do:<br>
  This dockerFile will install Java 7 and Tomcat 7. Once the image is created it will start the tomcat instance. Accessable by port 80. 

Prereqs:<br>
  FIG - http://www.fig.sh/install.html<br>
  Docker - https://docs.docker.com/installation/#installation

Install:<br>
  Just run 'fig up'
  
Run without FIG<br>
  docker build -t tomcat/tomcatimg .<br>
  docker run -t -i -v /tomcat/webapps:/opt/tomcat/active/webapps -p 80:8080 tomcat/tomcatimg:latest /opt/tomcat/active/bin/catalina.sh run





