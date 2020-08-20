    Create service Principel

      1. Cloud shell
      2. Linux virtual machine
      3. Windows virtual machine

    Cloud Shell

     Here by-default Cloud shell  have terraform and azure authentication. this is by default access token atteched via your user login 

    az account show

      {
        ........

        ........
      }

      # az ad sp create-sp-rbac --name jino

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


    https://www3.ntu.edu.sg/home/ehchua/programming/howto/Environment_Variables.html
