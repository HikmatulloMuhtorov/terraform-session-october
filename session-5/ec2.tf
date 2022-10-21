resource "aws_instance" "main" {
  count                  = 3
  ami                    = var.ami #HardCoding
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.ssh.id]

  tags = {
    Name = "${var.env}-${count.index}"
  }
}

# Reference to Resource:
# first_label.second_label.attribute
# Reference is Dynamic
# Reference to input variable 
# var.variable_name