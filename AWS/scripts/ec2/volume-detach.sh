#!/usr/bin/env bash
aws ec2 detach-volume --volume-id vol-099a1fe98cfcc30ec \
--instance-id i-02075b012f5379c50 --device /dev/sdf
