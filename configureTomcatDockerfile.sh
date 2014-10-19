DEFAULT_TOMCAT=7.0.56

sed "s/%VERSION%/${DEFAULT_TOMCAT}/g" Dockerfile.in>Dockerfile

