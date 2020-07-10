#!/bin/bash
wget https://releases.hashicorp.com/terraform/0.11.14/terraform_0.11.14_linux_amd64.zip
Sudo yum install unzip
unzip terraform_0.11.14_linux_amd64.zip
sudo mv terraform /usr/local/bin/terraform
./terraform
