#!/bin/sh

set -e

sed -i "s/s3_access/$S3ACCESS/g" /root/.ia
sed -i "s/s3_secret/$S3SECRET/g" /root/.ia

tubeup $1
