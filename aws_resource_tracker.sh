#!/bin/bash

####################
# Author : Shiv
# Date : 8th-June 2026
#
# Vwesion :v1
#
# This Script will report the AWS resource usage
# ####################
#

set -x

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

# list s3 buckets

echo "Print list of s3 buckets"
aws s3 ls

#list ec2 instances

echo"Print list of ec2 instances"
aws ec2 describe-instances --region eu-north-1 --query "Reservations[].Instances[].InstanceId"
#list aws lambda functions

echo"Print list of LAMBDA "
aws lambda list-functions --region eu-north-1

#list IAM users

echo"Print list of IAM Users"
aws iam list-users


:syntax on
syntax on
set number
set background=dark
 
