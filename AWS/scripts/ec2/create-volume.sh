#!/usr/bin/env bash

# --volume-type
# General Purpose SSD: gp2 | gp3
# Provisioned IOPS SSD: io1 | io2
# Throughput Optimized HDD: st1
# Cold HDD: sc1
# Magnetic: standard

# You must specify either a snapshot ID (--snapshot-id) or a volume size in GiBs (--size)
# gp2 and gp3 : 1-16,384
# io1 and io2 : 4-16,384
# st1 and sc1 : 125-16,384
# standard : 1-1,024

aws ec2 create-volume \
--availability-zone "us-east-1a" --encrypted \
--snapshot-id snap-037b8a3b139d54627 
# --size 10





