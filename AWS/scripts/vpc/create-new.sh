#!/usr/bin/env bash

aws ec2 create-vpc --cidr-block 172.16.0.0/16
aws ec2 describe-vpcs --vpc-ds [vpc-id] 
aws ec2 delete-vpc --vpc-id <vpc-id> 
