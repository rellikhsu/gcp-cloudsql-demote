### Ref: https://cloud.google.com/sql/docs/mysql/replication/configure-external-replica#demote 

This is a demote script for GCP CloudSQL 

------------


Requirement: gcloud cli command installed and authorized with your default region set, you can check with **gcloud config list **

> [compute]
region = asia-east1
[core]
account = youremailhere
disable_prompts = true
disable_usage_reporting = False



**Do the DemoteCreateVirtualMaster.sh first, than the Demote.sh script**

##### IMPORTANT ! Before CloudSQL demote processing, make sure the external mysql acting as your CloudSQL slave (mysql replica) and connection is established! if not , the GCP CloudSQL demote will be stuck
