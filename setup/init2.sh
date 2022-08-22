# SQS

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
 	awslocal sqs create-queue --queue-name "$i" --endpoint-url http://localhost:4566 --region us-west-2
done

awslocal sqs list-queues

# SNS

echo "########### Creating SNS ###########"
array=( created-bank-account-pomelo-success-ar
created-internal-bank-account-success-ar
created-internal-bank-cvu-pomelo-success-ar
created-profile-pomelo-success-ar
created-profile-success-ar
created-user-success-ar
deleted-internal-bank-account-success-ar
updated-internal-bank-account-success-ar
updated-profile-pomelo-id-success-ar
updated-profile-success-ar )

for i in "${array[@]}"
do
 awslocal sns create-topic --name "$i"
done

# SNS SUBSCRIPTIONS

echo "########### Creating SNS SUBSCRIPTIONS ###########"
array=( pomelo-ar pomelo-ar )
for i in "${array[@]}"
do
 awslocal sns subscribe --topic-arn arn:aws:sns:us-west-2:000000000000:created-bank-account-pomelo-success-ar --protocol sqs --notification-endpoint http://127.0.0.1:4566/000000000000/"$i"
done