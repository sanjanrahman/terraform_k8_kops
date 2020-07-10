#!/bin/bash
kops create cluster \
 --name=webcloudtutor.com \
 --state=s3://nsratest \
 --authorization RBAC \
 --zones=us-east-1a \
 --node-count=0 \
 --node-size=t2.micro \
 --master-size=t2.micro \
 --master-count=0 \
 --dns-zone=webcloudtutor.com \
 --out=webcloudtutor_terraform \
 --target=terraform \
 --ssh-public-key=~/.ssh/nsra.pub

