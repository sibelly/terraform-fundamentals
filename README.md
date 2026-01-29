# terraform-fundamentals
Study project to understand terraform better

## Commands

```
terraform init
terraform apply
terraform apply --auto-approve
terraform plan
terraform destroy

terraform plan -refresh=false
```

# Variables Precedence
1. Any `-var` and `-var-file` options on the command line in the order provided and variables from HCP Terraform
2. Any `*.auto.tfvars` or `*.auto.tfvars.json` files in lexical order
3. The `terraform.tfvars.json` file
4. The `terraform.tfvars` file
5. Environment variables
6. The `default` argument of the `variable` block

[doc source](https://developer.hashicorp.com/terraform/language/values/variables#assign-values-to-variables)
```
export TF_VAR_<variable_name>="value of var .env"

file terraform.tfvars -> it is read after the loading of environment variables, overwrites TF_VAR

variables.auto.tfvars -> read automatically all the files with .auto after the terraform.tfvars, overwrite terraform.tfvars, if there is more than one .auto it is overwritten by alphabetic order

terraform plan -var="name_of_var=value of var"
terraform plan -var-file=name-of-file.tfvars
```

## Docs
https://registry.terraform.io/providers/hashicorp/aws/latest/docs
https://github.com/codeedu/fc2-terraform

## AWS commands
- Access cluster
```
aws eks update-kubeconfig --region us-east-1 --name cluster-name
```