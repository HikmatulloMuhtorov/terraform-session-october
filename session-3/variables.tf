variable "env" {
    type = string
    description = "This is a variable for Environment"
    default = "qa"
}

variable "ami" {
    type = string
    description = "This is a variable for AMI"
    default = "ami-026b57f3c383c2eec"
    
}

variable "instance_type" {
    type = string
    description = "This is a variable for instance type"
    default = "t2.micro"
}