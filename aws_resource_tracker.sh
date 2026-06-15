#!/bin/bash

###########################################
# Author: Roni Daniel
# Date: 15 June
#
# Version: v1
#
# This scripts reports AWS resource usage
###########################################

#set -x
set -e
set -o pipefail

>resourceTracker #this is used to empty the file.

# > is used to replace
# >> is used to append

#list instances
echo "List of instances" >> resourceTracker
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker

#list s3 buckets
echo "List of s3 buckets" >> resourceTracker
aws s3 ls >> resourceTracker

#list lambda
echo "List of lambda functions" >> resourceTracker
aws lambda list-functions >> resourceTracker

#list users
echo "List of users" >> resourceTracker
                                                                                                                    24,0-1        Top