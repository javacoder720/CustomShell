#!/usr/bin/env bash

aws ec2 create-network-interface --private-ip-address 172.16.100.99 \
--subnet-id [subnet-id]

aws ec2 describe network-interfaces \
--network-interfaceids [network-interface-id]
