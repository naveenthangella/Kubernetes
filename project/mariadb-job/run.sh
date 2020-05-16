#!/bin/bash

i=1200
while true ; do
    nc -z ${MARIADB_SERVER} 3306
    [ $? -eq 0] && break
    i=$(($i-10))
    sleep 10
done
curl -s https://raghu-devops-sessions.s3.amazonaws.com/studentapp-ui-proj1.sql -o /tmp/studentapp.sql
mysql -h ${MARIADB_SERVER} -u${DBUSER} -p${DBPASS} </tmp/studentapp.sql

