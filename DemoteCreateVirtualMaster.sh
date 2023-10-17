#!/bin/bash
# this is a cloud sql configuration script for reverse the external database as master 
ACCESS_TOKEN="$(gcloud auth print-access-token)"
curl --header "Authorization: Bearer ${ACCESS_TOKEN}" \
     --header 'Content-Type: application/json' \
     --data '{
         "name": "sql-instance-1-master",
	 "region": "asia-east1",
         "databaseVersion": "MYSQL_8_0",
         "onPremisesConfiguration": {
             "hostPort": "<OnPremisesIpHere>:3306",
	     "username": "mysqlUser",
             "password": "mysqlPassword"
         }
     }' \
     -X POST \
     https://sqladmin.googleapis.com/sql/v1beta4/projects/<Project_ID>/instances
