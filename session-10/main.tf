module "ec2" {
  source        = "github.com/HikmatulloMuhtorov/terraform-session-october//modules/ec2?ref=v1.0.0"
  env           = "dev"
  instance_type = "t2.micro"
}