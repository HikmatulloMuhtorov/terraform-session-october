variable "bucket_name" {
    type = string
    description = "This is a variable for s3 bucket name. Bucket name has to be unique, lower case, and no special characters."
    default = "terraform-module-test-bucket-hik"
}


variable "env" {
type = string
description = "Environment variable"
default = "dev"
}

variable "bucket_acl" {
    type = string
    description = "Bucket level acess control list. values can be 'private' or 'public', Private is Recommended"
    default = "private"
}