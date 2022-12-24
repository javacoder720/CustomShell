#!/usr/bin/env bash
aws s3control create-access-point --name access \
--account-id 666861403954 --bucket gateswangawsbucket \
--vpc-configuration VpcId=vpc-0f8be8642889bad28