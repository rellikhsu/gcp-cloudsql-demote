# gcp-cloudsql-demote
  A demote script for GCP cloud sql 
  requirement: gcloud cli command installed and authorized
  Ref: https://cloud.google.com/sql/docs/mysql/replication/configure-external-replica#demote
  Do the DemoteCreateVirtualMaster.sh first, than the Demote.sh script

#Important !
Before Demote processing, be sure the external mysql to be your cloud sql slave and connection is established!
If not , the Cloud SQL demote will hang becuase of no mysql replica, it don't know how to change master to.
