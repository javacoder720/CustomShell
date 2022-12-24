#!/usr/bin/env bash
aws s3api put-bucket-lifecycle-configuration --bucket gateswangawsbucket \
--lifecycle-configuration '{
    "Rules":[
        {
            "Status":"Enabled",
            "Transitions":[
                {
                    "Days":30,
                    "StorageClass": "STANDARD_IA"
                }
            ],
            "ID": "life for objects"
        }
    ]
}'

aws s3api get-bucket-lifecycle-configuration --bucket gateswangawsbucket