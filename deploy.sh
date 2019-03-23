#!/bin/bash
if [ $1 = "PROD" ]
then
sshpass -p $prod_passwd scp /target/HelloWorld.war tomcat1:/packages/apache-tomcat-9.0.16/webapps
else [ $1 = "DEV" ]
sshpass -p $dev_passwd scp /target/HelloWorld.war tomcat2:/packages/apache-tomcat-9.0.16/webapps
fi
