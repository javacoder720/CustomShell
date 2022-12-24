#!/usr/bin/env bash

aws s3api put-bucket-acl --bucket gateswangawsbucket --acl public-read 

aws s3 website s3://gateswangawsbucket/ --index-document index.html \
    --error-document error.html 