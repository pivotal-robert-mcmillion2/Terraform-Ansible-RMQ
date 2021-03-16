# rabbitmq-cluster-terraform-ansible

## Pre-requisites

You will need to install the following CLIs:

- AWS CLI
- Terraform CLI
- Ansible Playbook CLI

## Running the script
There are some configuration that needs to be done before deploying and provisioning the nodes.

1. Run AWS CLI and enter access and secret keys by running "aws configure":

> rmcmillion-a01:rabbitmq-cluster-terraform-ansible rmcmillion$ aws configure
> AWS Access Key ID [****************ILOJ]:
> AWS Secret Access Key [****************y0dt]:
> Default region name [us-east-1]:
> Default output format [json]:`

  The keys can be pulled from IAM service in AWS.

2. Open variable.tf and set "aws_region" and "aws_ami" variables.

3. Import a SSH keypair from your machine to AWS EC2 using key pair service on the left hand side.  Name it "main".  This will be used to SSH into the instances so Ansible can configure/cluster the nodes. 

4. Deploy the AWS instances by running "terraform apply -auto-apply"

5. Note down the public IPs in the terraform output.  Add the addresses to the node IPs in the "hosts" file.

6. Run "ansible-playbook -i hosts playbook.yml" to configure the nodes for RMQ.  It pulls the latest version of RMQ at this point in time.
