#!/usr/bin/env bash

# vpc-0f8be8642889bad28
# 130.156.160.103
# acl-0446807a82a3417ef

aws ec2 create-network-acl --vpc-id vpc-0f8be8642889bad28

aws ec2 create-network-acl-entry --ingress --cidr-block "0.0.0.0/0" \
--protocol "tcp" --port-range "From=22,To=22" --rule-action "allow" \
--network-acl-id acl-0446807a82a3417ef --rule-number 70

aws ec2 create-network-acl-entry --ingress --cidr-block "130.156.160.103/32" \
--protocol "tcp" --port-range "From=3389,To=3389" --rule-action "allow" \
--network-acl-id acl-0446807a82a3417ef --rule-number 80

aws ec2 describe-network-acls --network-acl-id acl-0446807a82a3417ef
