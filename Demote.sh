#!/bin/bash
#
ACCESS_TOKEN="$(gcloud auth print-access-token)"
curl --header "Authorization: Bearer ${ACCESS_TOKEN}" \
     --header 'Content-Type: application/json' \
     --data '{
		"demoteMasterContext": {
			"replicaConfiguration": {
				"mysqlReplicaConfiguration": {
					"username": "MysqlUserHere",
					"password": "MysqlPasswordHere",
				}
			},
		"masterInstanceName": "MasterInstance-test",
		},
	}' \
-X POST https://sqladmin.googleapis.com/sql/v1beta4/projects/<PROJECT_ID>/instances/<Instance_Name>/demoteMaster
