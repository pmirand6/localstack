#!/bin/bash

name=created-profile-success-ar
url=http://127.0.0.1:4566/000000000000/
arn=arn:aws:sns:us-west-2:000000000000
array=( pomelo-ar )

echo "########### Creating Subscription $name ###########"


for i in "${array[@]}"
do
 awslocal sns subscribe --topic-arn $arn:$name --protocol sqs --notification-endpoint $url"$i"
done