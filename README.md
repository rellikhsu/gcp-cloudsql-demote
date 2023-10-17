# gcp-cloudsql-demote
  Ref: https://cloud.google.com/sql/docs/mysql/replication/configure-external-replica#demote
  A demote script for GCP cloud sql
  requirement: gcloud cli command installed and authorized with your default region set ( check with gcloud config list )
	'[compute]'
	'region = asia-east1'
	'[core]'
	'account = youremailhere'
	'disable_prompts = true'
	'disable_usage_reporting = False'
	'project = project-name'
  Do the DemoteCreateVirtualMaster.sh first, than the Demote.sh script

#Important !
Before Demote processing, be sure the external mysql to be your cloud sql slave (mysql replica) and connection is established!
If not , the Cloud SQL demote will hang becuase of no mysql replica, it don't know how to change master to.
