# Local is used for something that is repeated over and over again.
# Warning: Do not overuse Locals

# 1. Naming Standard
# 2. Tagging Standard / Common Tags

# Naming Standard

# aws-ue1-nonprod-dev-cat-${resource_name}

# aws = cloud provider
# ue1 = us-east-1 region
# nonprod = account
# dev = environment
# cat = project name
# ${resource_name} = asg, alb, route53, rds, etc)

# Tagging Standard / Common Tags

#     common_tags
#   env = ""
#   project = ""
#   team = ""
#   owner = ""
#   Managed_by = ""

locals {
  name = "aws-${var.region}-${var.stage}-${var.env}-${var.project}-rtype"
  common_tags = {
    env        = var.env
    project    = var.project
    team       = "Devops"
    owner      = "Hik"
    Managed_by = "Terraform"
  }
}