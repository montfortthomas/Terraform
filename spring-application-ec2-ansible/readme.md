Create the iam credentials to create servers

Requirements for execution on localhost

1. ubuntu os

    sudo apt update
    sudo apt install unzip


2. Terraform ( Install terraform )

    $ wget https://releases.hashicorp.com/terraform/0.13.2/terraform_0.13.2_linux_amd64.zip
    $ unzip terraform_0.13.2_linux_amd64.zip
    $ sudo mv terraform /usr/local/bin/
    $ terraform --version

3. ansible ( install ansible )

    $ sudo apt update
    $ sudo apt install software-properties-common
    $ sudo apt-add-repository --yes --update ppa:ansible/ansible
    $ sudo apt install ansible
    $ ansible --version


Environment variable

$ export AWS_ACCESS_KEY_ID="AKIAIC24BRXZ"
$ export AWS_SECRET_ACCESS_KEY="wGzNscF7uFc"
$ export AWS_DEFAULT_REGION="us-east-1"


Execution method

unzip the file

cd foldername

terraform init
terraform apply -auto-approve


# Check the petclinic spring application

Go to Browser

http://[APP-SERVER]:8080/petclinic   # petclinic application deployment console
http://[APP-SERVER]:8080             # tomcat server
http://[APP-SERVER]:80               # apache2 server

