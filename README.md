dockertesting
=============

Objective:<br>
  Play around with docker. 

What is this repo:<br>
  This repo contains docker files to create base jre and tomcat images

Prereqs:<br>
  Docker - https://docs.docker.com/installation/#installation

Install:<br>
 ./createImages.sh

Run Tomcat Image<br>
  docker run -d -v /tomcat/webapps:/opt/tomcat/active/webapps -p 80:8080 apache/ub_tomcat_v7

