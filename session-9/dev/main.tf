# Terraform Module
# 1. Local Module = Module is in your system
# 2. Remote Module = module is in remote system such as SCM,HTTP url, Terraform Cloud or Enterprise

module "s3" {
######################## Where the Child Module is ##############
    source = "../../modules/s3" # where the child module is.


######################## Variables ##############################
  env = "dev"
  bucket_name = "terraform-module-test-hik"
  bucket_acl = "private"
  }