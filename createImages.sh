docker build -t oracle/ub_jre_v7 oracle/jre/7/ubuntu/
docker tag oracle/ub_jre_v7 oracle/ub_jre_v7:7u72-b14

docker build -t openjdk/co_jre_v7 openjdk/jre/7/centos/
docker tag openjdk/co_jre_v7 openjdk/co_jre_v7:1.7.0

docker build -t apache/ub_tomcat_v7 apache/tomcat/7/ubuntu/
docker tag apache_ub_tomcat_v7 apache/ub_tomcat_v7:7.0.56

docker build -t apache/co_tomcat_v7 apache/tomcat/7/centos/
docker tag apache/co_tomcat_v7 apache/co_tomcat_v7:7.0.56
