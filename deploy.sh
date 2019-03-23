#!/bin/bash

if [ $ENVIRONMENT = "PROD" ]; then
   echo Deploying to "$ENVIRONMENT" Environment ....
   sshpass -p "prod_tomcat" scp target/myHelloWorld.war tomcat1:/packages/apache-tomcat-9.0.16/webapps
elif [ $ENVIRONMENT = "DEV" ]; then
   echo Deploying to "$ENVIRONMENT" Environment....
   sshpass -p "dev_tomcat" scp target/myHelloWorld.war tomcat2:/packages/apache-tomcat-9.0.16/webapps
fi
