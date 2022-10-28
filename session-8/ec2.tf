resource "aws_instance" "main" {
  ami                    = data.aws_ami.amazon_linux_2.image_id #HardCoding
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.ssh.id]
  key_name               = aws_key_pair.terraformkey.key_name
  tags = {
    Name = format("%s-instance", var.env)
  }
  ########################FILE PROVISIONER######################### 
  provisioner "file" {
    source      = "/home/ec2-user/terraform-session-october/session-8/index.html"
    destination = "/tmp/index.html"

    connection {
      type        = "ssh"
      user        = "ec2-user"
      host        = self.public_ip
      private_key = file("~/.ssh/id_rsa")
    }
  }
  ########################REMOTE EXEC##############################
  provisioner "remote-exec" {
    inline = [
      "sudo yum install httpd -y",
      "sudo systemctl enable httpd",
      "sudo systemctl start httpd",
      "sudo cp /tmp/index.html /var/www/html/index.html"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      host        = self.public_ip
      private_key = file("~/.ssh/id_rsa")
    }
  }
}
########################KEY PAIR#################################  
resource "aws_key_pair" "terraformkey" {
  key_name   = "deployer-key"
  public_key = file("~/.ssh/id_rsa.pub")
}
#######################Local Exec Provisioner###################
resource "null_resource" "local_script" {
 provisioner "local-exec" {
 command = "echo 'Hello from the local exec' > local.txt"
 }
 } 
