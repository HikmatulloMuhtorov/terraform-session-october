resource "aws_instance" "first_ec2" {
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  tags = {
    Name        = "first"
    Environment = "dev"
  }
}


#resource = block
#aws_instance = first label = resource type = predefined by Terraform
#first_ec2 = second label = logical name or ID (Name for the Resource) = defined by author
#argument = consists of key/value, name/value = Configuration and componenets of your Resources
# - key = predfined by Terraform
# - Value = Defined by Author
# Each Terraform Configuration file has an extension called ".tf"
# Terraform has 2 types of Blocks
#1. Resource  = Create and Manaage Resources, Services, Infrastructures
#2. Data Source = 

#Each Block Expects 2 labels, Resource expects 2 labels



