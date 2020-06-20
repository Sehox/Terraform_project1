#!/bin/sh

# please launch the script using . "the name of the file" otherwize the export won't be executed 

wget https://releases.hashicorp.com/terraform/0.12.16/terraform_0.12.16_linux_amd64.zip
wget https://releases.hashicorp.com/terraform-provider-null/2.1.2/terraform-provider-null_2.1.2_linux_amd64.zip
wget https://releases.hashicorp.com/terraform-provider-template/2.1.2/terraform-provider-template_2.1.2_linux_amd64.zip
wget https://releases.hashicorp.com/terraform-provider-aws/2.31.0/terraform-provider-aws_2.31.0_linux_amd64.zip
# unzip terraform_0.12.16_linux_amd64.zip 
# unzip terraform-provider-null_2.1.2_linux_amd64.zip
# unzip terraform-provider-template_2.1.2_linux_amd64.zip
# unzip terraform-provider-aws_2.31.0_linux_amd64.zip 
unzip 'terraform*.zip'
# rm terraform-provider-null_2.1.2_linux_amd64.zip terraform-provider-template_2.1.2_linux_amd64.zip terraform-provider-aws_2.31.0_linux_amd64.zip 
rm *.zip -f
chmod +x terraform
chmod +x terraform-provider-*
mkdir -p /tmp/terraform_plugin/
mv -f terraform /usr/local/bin
mv -f terraform-provider-* /tmp/terraform_plugin/

export PATH=$PATH:/usr/local/bin