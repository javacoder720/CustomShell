#!/usr/bin/env bash
# vol-0f088776dc23eda2a (root)
# vol-099a1fe98cfcc30ec

ROOTVOL=vol-0f088776dc23eda2a
VOL=vol-099a1fe98cfcc30ec

aws ec2 create-snapshot --volume-id $ROOTVOL