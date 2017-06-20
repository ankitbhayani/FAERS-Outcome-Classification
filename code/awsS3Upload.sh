#!/bin/bash

set -e

: ${ACCESS_KEY:?"ACCESS_KEY env variable is required"}
: ${SECRET_KEY:?"SECRET_KEY env variable is required"}
: ${S3_PATH:?"S3_PATH env variable is required"}
: ${REGION:?"REGION env variable is required"}
export DATA_PATH=${DATA_PATH:-/data/}
#CRON_SCHEDULE=${CRON_SCHEDULE:-0 1 * * *}

echo "access_key=$ACCESS_KEY"
#>> /root/.s3cfg
echo "secret_key=$SECRET_KEY"
#>> /root/.s3cfg
echo "S3_PATH=$S3_PATH"
#>> /root/.s3cfg
echo "REGION=$REGION"

aws configure set aws_access_key_id $ACCESS_KEY
aws configure set aws_secret_access_key $SECRET_KEY
aws configure set default.region $REGION

echo "AWS S3 Job started: $(date)"

aws s3 sync /src/Output  $S3_PATH 

echo "AWS S3 Job finished: $(date)"
