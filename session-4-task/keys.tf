resource "aws_key_pair" "terraform_key" {
  key_name   = "terraform_server_key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDV5eMJIzbme0JE0u8hcElcWTdEKByH1Z57lunIRZnizirKrGsxAAawX0I+sMSN+N1RS2WMeaFnEIlfjsZrOiiDH5h8d6U2mVyuR1KR2RMxb4PSR2QN72aF4Ls4wwvzfU6cpWwRSGqKhVKisBzzYGdgrzpTX3n2y4BBgewOlH8VArtPBz/24gJLXZQnfF4G8X8vlgCZ1eKOXde1+HoFY6ylFx3GcA0XrhjVZQrYkm9RT69FWA8MRCG5lQcaGbNhPXYAri7eb7HR/6B6rnrFiy6dTvlFXKAEyD4AgNy31G2NtTBzkfUR6qnrojffPLO+R4e28el3FBpX4ftN/OpEe52d ec2-user@ip-172-31-91-28.ec2.internal"
}