#!/usr/bin/env bash

# aws ec2 attach-volume --volume-id vol-099a1fe98cfcc30ec \
# --instance-id i-02075b012f5379c50 --device /dev/sdf

aws ec2 attach-volume --volume-id vol-0acc817035b0a7b6b \
--instance-id i-04073acd2dd7b4291 --device /dev/sdf
