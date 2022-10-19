resource "aws_instance" "main" {
    ami = data.aws_ami.amazon_linux_2.image_id #HardCoding
    instance_type = var.instance_type
    vpc_security_group_ids = [ aws_security_group.ssh.id ] 
    user_data = data.template_file.user_data.rendered
  tags = {
    Name        = format("%s-instance",var.env)
  }
}

# Reference to Resource:
# first_label.second_label.attribute
# Reference is Dynamic
# Reference to input variable 
# var.variable_name