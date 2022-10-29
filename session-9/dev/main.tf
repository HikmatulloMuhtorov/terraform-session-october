# Terraform Module
# 1. Local Module = Module is in your system
# 2. Remote Module = module is in remote system such as SCM,HTTP url, Terraform Cloud or Enterprise

module "s3" {
  ######################## Where the Child Module is ##############
  source = "../../modules/s3" # where the child module is.


  ######################## Variables ##############################
  env         = "dev"
  bucket_name = "terraform-module-test-hik"
  bucket_acl  = "private"
}
module "ec2" {
  source         = "../../modules/ec2"
  env            = "dev"
  instance_type  = "t2.micro"
  ami            = "ami-09d3b3274b6c5d4aa"
  s3_bucket_name = module.s3.s3_bucket_name
}