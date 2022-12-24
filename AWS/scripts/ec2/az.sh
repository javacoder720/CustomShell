#!/usr/bin/env bash

# 0 (pending), 
# 16 (running), 
# 32 (shutting-down)
# 48 (terminated)
# 64 (stopping)
# 80 (stopped)
aws ec2 describe-instances \
--filter Name=instance-state-code,Values=16 \
--query 'Reservations[*].Instances[*].Placement[].AvailabilityZone'