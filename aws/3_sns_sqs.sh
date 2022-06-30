#!/bin/bash

name=created-bank-account-pomelo-success-ar
url=http://127.0.0.1:4566/000000000000/
arn="arn:aws:sns:us-west-2:000000000000"
array=( pomelo-ar bank-sns-ar )

echo "########### Creating Subscription $name ###########"


for i in "${array[@]}"
do
 awslocal sns subscribe --topic-arn "$arn":"$name" --protocol sqs --notification-endpoint $url"$i"
done


name=created-internal-bank-account-success-ar
url=http://127.0.0.1:4566/000000000000/
arn=arn:aws:sns:us-west-2:000000000000
array=( pomelo-ar bank-sns-ar )

echo "########### Creating Subscription $name ###########"


for i in "${array[@]}"
do
 awslocal sns subscribe --topic-arn "$arn":"$name" --protocol sqs --notification-endpoint $url"$i"
done

name=created-internal-bank-cvu-pomelo-success-ar
url=http://127.0.0.1:4566/000000000000/
arn=arn:aws:sns:us-west-2:000000000000
array=( bank-sns-ar )

echo "########### Creating Subscription $name ###########"


for i in "${array[@]}"
do
 awslocal sns subscribe --topic-arn $arn:$name --protocol sqs --notification-endpoint $url"$i"
done

name=created-profile-pomelo-success-ar
url=http://127.0.0.1:4566/000000000000/
arn=arn:aws:sns:us-west-2:000000000000
array=( profile-sns-ar )

echo "########### Creating Subscription $name ###########"


for i in "${array[@]}"
do
 awslocal sns subscribe --topic-arn $arn:$name --protocol sqs --notification-endpoint $url"$i"
done

name=created-profile-success-ar
url=http://127.0.0.1:4566/000000000000/
arn=arn:aws:sns:us-west-2:000000000000
array=( pomelo-ar )

echo "########### Creating Subscription $name ###########"


for i in "${array[@]}"
do
 awslocal sns subscribe --topic-arn $arn:$name --protocol sqs --notification-endpoint $url"$i"
done

name=created-user-success-ar
url=http://127.0.0.1:4566/000000000000/
arn=arn:aws:sns:us-west-2:000000000000
array=( profile-sns-ar )

echo "########### Creating Subscription $name ###########"


for i in "${array[@]}"
do
 awslocal sns subscribe --topic-arn $arn:$name --protocol sqs --notification-endpoint $url"$i"
done

name=deleted-internal-bank-account-success-ar
url=http://127.0.0.1:4566/000000000000/
arn=arn:aws:sns:us-west-2:000000000000
array=( pomelo-ar )

echo "########### Creating Subscription $name ###########"


for i in "${array[@]}"
do
 awslocal sns subscribe --topic-arn $arn:$name --protocol sqs --notification-endpoint $url"$i"
done

name=updated-internal-bank-account-success-ar
url=http://127.0.0.1:4566/000000000000/
arn=arn:aws:sns:us-west-2:000000000000
array=( pomelo-ar )

echo "########### Creating Subscription $name ###########"


for i in "${array[@]}"
do
 awslocal sns subscribe --topic-arn $arn:$name --protocol sqs --notification-endpoint $url"$i"
done


name=updated-profile-pomelo-id-success-ar
url=http://127.0.0.1:4566/000000000000/
arn=arn:aws:sns:us-west-2:000000000000
array=( bank-sns-ar card-sns-ar )

echo "########### Creating Subscription $name ###########"


for i in "${array[@]}"
do
 awslocal sns subscribe --topic-arn $arn:$name --protocol sqs --notification-endpoint $url"$i"
done

name=updated-profile-success-ar
url=http://127.0.0.1:4566/000000000000/
arn=arn:aws:sns:us-west-2:000000000000
array=( pomelo-ar )

echo "########### Creating Subscription $name ###########"


for i in "${array[@]}"
do
 awslocal sns subscribe --topic-arn $arn:$name --protocol sqs --notification-endpoint $url"$i"
done