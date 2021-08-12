
```sh

$ terraform version
$ terraform init \
    -backend-config="bucket=backetname" \
    -backend-config="key=folder/state.tfstate" \ 
    -backend-config="region=eu-west-1" \
    -backend=true
$ terraform plan -var-file=config.tfvars
$ terraform apply -var-file=config.tfvars
$ terraform destroy -var-file=config.tfvars

```

