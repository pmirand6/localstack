#!/bin/bash

echo "-------------------------------------Script-02"

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