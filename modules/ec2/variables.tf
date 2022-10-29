variable "ami" {
    type = string
    description = "Amazon Machine Image"
    default = "ami-09d3b3274b6c5d4aa"

}
variable "instance_type" {
    type = string
    description = "Size of EC2"
    default = "t2.micro"
}
variable "env" {
    type = string
    description = "Environment Variable"
    default = "dev"
}

variable "s3_bucket_name" {
    type = string 
    description = "S3 bucket bucket name for application to upload images"
    default = "test"
}