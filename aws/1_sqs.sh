#!/bin/bash

echo "-------------------------------------Script-01"

echo "########### Creating SQS ###########"
array=( pomelo cards cards_sns bank bank_sns profile profile_sns )

for i in "${array[@]}"
do
 	awslocal sqs create-queue --queue-name "$i" --endpoint-url http://localhost:4566
done
awslocal sqs list-queues --endpoint-url=http://localhost:4566