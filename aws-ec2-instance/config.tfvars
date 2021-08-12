access_key          ="xxxxx"
secret_key          ="xxxxxx" 
instanceName        ="demo"
key_name            ="smart-remittance-eks-cluster"
subnet_id           ="subnet-0f374a1f1c35b0123"
ami                 ="ami-0567f647e75c7bc05"
instance_type       ="t2.micro"
vpc_id              ="vpc-0852c36031ac7a6f6"
region              ="ap-southeast-2"
availability_zone   ="ap-southeast-2a"
additional_tags     =   {
                        ProvisionBy = "Terraform"
                        Environment = "development"
                        }
ports               =  {
                        "443"  = ["0.0.0.0/0"]
                        "22"   = ["0.0.0.0/0"]
                        "80"   = ["0.0.0.0/0"]
                       }
