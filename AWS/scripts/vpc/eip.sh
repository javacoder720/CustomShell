#!/usr/bin/env bash

# eipalloc-0e078be07060fa949	
# eni-08f7e0a28c348a0c0

aws ec2 allocate-address

aws ec2 associate-address --allocation-id eipalloc-0e078be07060fa949 --network-interface-id eni-08f7e0a28c348a0c0

aws ec2 describe-network-interfaces --network-interface-ids eni-08f7e0a28c348a0c0
