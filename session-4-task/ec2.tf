resource "aws_instance" "instance_main" {
    ami = data.aws_ami.amazon_linux_2.image_id #HardCoding
    instance_type = var.instance_type
    vpc_security_group_ids = [ aws_security_group.ssh.id ] 
    user_data = file("user_data.sh")
    key_name = aws_key_pair.terraform_key.id
    subnet_id = aws_subnet.pub_sub_1.id
    associate_public_ip_address = true
  tags = {
    Name        = format("%s-instance",var.env)
  }
}

# Reference to Resource:
# first_label.second_label.attribute
# Reference is Dynamic
# Reference to input variable 
# var.variable_name