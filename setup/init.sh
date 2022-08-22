# SQS

awslocal sqs create-queue \
--queue-name invoice-notification-mobile-dlq \
--region us-west-2

awslocal sqs create-queue \
--queue-name invoice-notification-mobile \
--region us-west-2 \
--attributes '{
  "RedrivePolicy": "{\"deadLetterTargetArn\":\"arn:aws:sqs:us-west-2:000000000000:invoice-notification-mobile-dlq\",\"maxReceiveCount\":\"2\"}",
  "MessageRetentionPeriod": "259200",
  "VisibilityTimeout": "90"
}'

awslocal sqs create-queue \
--queue-name invoice-notification-email-dlq \
--region us-west-2

awslocal sqs create-queue \
--queue-name invoice-notification-email \
--region us-west-2 \
--attributes '{
  "RedrivePolicy": "{\"deadLetterTargetArn\":\"arn:aws:sqs:us-west-2:000000000000:invoice-notification-email-dlq\",\"maxReceiveCount\":\"2\"}",
  "MessageRetentionPeriod": "259200",
  "VisibilityTimeout": "90"
}'

# SNS

awslocal sns create-topic \
--name invoice-notification

awslocal sns subscribe \
--topic-arn arn:aws:sns:us-west-2:000000000000:invoice-notification \
--protocol sqs \
--notification-endpoint http://127.0.0.1:4566/000000000000/invoice-notification-mobile \
--attributes '{
"FilterPolicy": "{\"origin\": [\"MOBILE\"]}"
}'

awslocal sns subscribe \
--topic-arn arn:aws:sns:us-west-2:000000000000:invoice-notification \
--protocol sqs \
--notification-endpoint http://127.0.0.1:4566/000000000000/invoice-notification-email \
--attributes '{
"FilterPolicy": "{\"origin\": [\"EMAIL\"]}"
}'


# S3

awslocal s3 mb s3://invoices \
--region us-west-2