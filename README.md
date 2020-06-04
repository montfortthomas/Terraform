# Terraform

    version >= 0.12.*

Create service Principel (Azure)

    1. Cloud shell
    2. Linux virtual machine
    3. Windows virtual machine

[environment variables](https://www3.ntu.edu.sg/home/ehchua/programming/howto/Environment_Variables.html)


Cloud Shell

    Here by-default Cloud shell  have terraform and azure authentication.
    This is by default access token atteched via your user login 

azure account show

    az account show

        {
          ........

          ........
        }

create service principel

    az ad sp create-sp-rbac --name jino

      {
        ........

        ........

      }
      
Linux environment

    $ export ARM_CLIENT_ID="xxxxx"
    $ export ARM_CLIENT_SECRET="xxxxx"
    $ export ARM_SUBSCRIPTION_ID="xxxxx"
    $ export ARM_TENANT_ID="xxxxx"


windows environment

    $ set ARM_CLIENT_ID="xxxxx"
    $ set ARM_CLIENT_SECRET="xxxxx"
    $ set ARM_SUBSCRIPTION_ID="xxxxx"
    $ set ARM_TENANT_ID="xxxxx"

Raw input specified

    provider "azurerm" {

      version = "=2.4.0"
      subscription_id = "xxxxx"
      client_id       = "xxxxx"
      client_secret   = "xxxxx"
      tenant_id       = "xxxxx"
      features {}

    }



# overview
Directory | Description
------------ | -------------
1 | First steps: Launching an EC2 instance
2 | Using provisioner
2.1 | Using provisioner on a Windows instance
3 | Executing script locally
4 | Outputting
5 | Data Source
6 | Modules
7 | AWS VPC
8 | EC2 instance within VPC with securitygroup
9 | EC2 instance with EBS volumes
10 | Userdata and cloudinit
11 | Route53 (DNS)
12 | RDS
13 | IAM
14 | IAM Roles with S3 bucket
15 | Autoscaling
16 | Autoscaling with ELB (Elastic Load Balancer)
17 | Elastic Beanstalk PHP 7 stack with RDS
18 | Interpolations, VPC module
18b | Project structure, best practices
packer | Build AMIs with Packer
jenkins-packer | Demo with jenkins and Packer
docker1 | Using ECR - The EC2 Container Registry
docker2 | Using ECS - The EC2 Container Service
docker-3 | Using ECR/ECS with Jenkins in a complete workflow
module | Using ECS + ALB in 4 modules to show how developing terraform modules work
