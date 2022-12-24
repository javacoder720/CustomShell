#!/usr/bin/env bash

# vpc-08f12cb2d99771c87
# subnet-08a5bf7a588892609
# 172.17.100.0/24
# rtb-082fff4674bbf5406

# vpc-0f8be8642889bad28
# subnet-0852af450f97c85d9
# 172.31.32.0/20
# rtb-0716dcf9bfbea0c90

aws ec2 create-vpc --cidr-block 172.17.0.0/16 
aws ec2 create-subnet --vpc-id vpc-08f12cb2d99771c87 --cidr-block 172.17.100.0/24 --availability-zone us-east-1b
aws ec2 create-transit-gateway

# tgw-0922ffd5e8a194e29
# tgw-rtb-0492e550738920d1a

aws ec2 create-transit-gateway-vpc-attachment --transit-gateway-id tgw-0922ffd5e8a194e29 \
--vpc-id vpc-0f8be8642889bad28 --subnet-ids subnet-0852af450f97c85d9

aws ec2 search-transit-gateway-routes --transit-gateway-route-table-id tgw-rtb-0492e550738920d1a \
--filters "Name=type,Values=static,propagated"

aws ec2 create-route --route-table-id rtb-082fff4674bbf5406 \
--destination-cidr-block "172.31.32.0/20" --transit-gateway-id tgw-0922ffd5e8a194e29

aws ec2 describe-route-tables --filters Name=route.transit-gateway-id,Values=tgw-0922ffd5e8a194e29

# tgw-attach-066ba2b0e364765d1
# tgw-attach-06db098ea4da69bbd

aws ec2 delete-transit-gateway --transit-gateway-id tgw-0922ffd5e8a194e29