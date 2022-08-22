#!/bin/bash

echo "-------------------------------------Script-01"

echo "########### Creating SQS ###########"
array=( bank-ar
        bank-sns-ar
        card-ar
        card-sns-ar
        cashout-ar
        cashout-sns-ar
        pomelo-ar
        profile-ar
        profile-sns-ar )

for i in "${array[@]}"
do
 	awslocal sqs create-queue --queue-name "$i" --endpoint-url http://localhost:4566
done
awslocal sqs list-queues --endpoint-url=http://localhost:4566