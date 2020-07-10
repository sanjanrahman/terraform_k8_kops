#!/bin/bash
kops delete cluster --name=webcloudtutor.com --yes --state=s3://nsratest --yes
rm -rf webcloudtutor_terraform/
