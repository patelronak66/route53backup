#!/bin/bash
## Author Ronak Patel ##
TIME=`date +"%Y%m%d%H"`
BACKUP_BUCKET=route53lambdabackup2018
if [ $# -lt 2 ]
then
  echo "Usage: \$1 zonedata filename to restore Route53 \$2 zone id to restore data"
else
  ZONEFILE=$1
  ZONEID=$2
  aws s3 cp s3://$BACKUP_BUCKET/$ZONEFILE .
  ZONEFILENAME="$ZONEID"_"$TIME".bkp
  cli53 import --file $1 --replace --wait $2
fi
