#!/bin/bash
if [ $ENVIRONMENT = "PROD" ]
then
sshpass -p $prod_passwd scp /target/HelloWorld.war tomcat1:/packages/apache-tomcat-9.0.16/webapps
else [ $ENVIRONMENT = "DEV" ]
sshpass -p $dev_passwd scp /target/HelloWorld.war tomcat2:/packages/apache-tomcat-9.0.16/webapps
fi
