#!/bin/bash

if [ $1 = "PROD" ]; then
   echo Deploying to "$ENVIRONMENT" Environment ....
   sshpass -p $prod_passwd scp target/myHelloWorld.war tomcat1:/packages/apache-tomcat-9.0.16/webapps
elif [ $1 = "DEV" ]; then
   echo Deploying to "$ENVIRONMENT" Environment....
   sshpass -p $dev_passwd scp target/myHelloWorld.war tomcat2:/packages/apache-tomcat-9.0.16/webapps
fi
