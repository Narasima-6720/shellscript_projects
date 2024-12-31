#!/bin/bash

# Author : Narasimha reddy
# Date: 31 Dec 2024

#Version : v1
# This shell script will report the aws resource usage

##################################################################

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM USERS

set -x

#list the s3 buckets
echo "Print the list of s3 buckets"
aws s3 ls

#list the ec2 instances
echo "Print the list of ec2 instances"
#aws describe-instances
 aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list the lambda function
echo "Print the lambda functions"

aws lambda list-functions


#list the Iam users
echo "Print the of IAM users"

aws iam list-users


########################################

output:

+ echo 'Print the list of s3 buckets'
Print the list of s3 buckets
+ aws s3 ls
+ echo 'Print the list of ec2 instances'
Print the list of ec2 instances
+ jq '.Reservations[].Instances[].InstanceId'
+ aws ec2 describe-instances
"i-0a473c4b6bfcde7e5"
"i-08dd339b8ac087984"
+ echo 'Print the lambda functions'
Print the lambda functions
+ aws lambda list-functions
{
    "Functions": []
}
+ echo 'Print the of IAM users'
Print the of IAM users
+ aws iam list-users
{
    "Users": [
        {
            "Path": "/",
            "UserName": "IAMUSER1",
            "UserId": "AIDAQ3EGRNWN5RD5NV56G",
            "Arn": "arn:aws:iam::058264219035:user/IAMUSER1",
            "CreateDate": "2024-09-27T11:59:01+00:00"
        }
    ]
}




