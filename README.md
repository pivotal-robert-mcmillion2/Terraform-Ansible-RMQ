# rabbitmq-cluster-terraform-ansible

## Pre-requisites

- AWS CLI
- Terraform CLI
- Ansible Playbook CLI

## Running the script
There are some configuration that needs to be done before deploying and provisioning the nodes.

1. Run AWS CLI and enter access and secret keys.  The keys can be pulled from IAM service in AWS.

2. Open variable.tf and set "aws_region" and "aws_ami" variables

3. Deploy the AWS instances by running "terraform apply -auto-apply"

4. Note down the public IPs in the terraform output.  Add the addresses to the node IPs in the "hosts" file.

5. Run "ansible-playbook -i hosts playbook.yml" to configure the nodes for RMQ.  It pulls the latest version of RMQ at this point in time.