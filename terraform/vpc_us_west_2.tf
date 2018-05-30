module "vpc_usw2" {
  source = "terraform-aws-modules/vpc/aws"
  providers {
    aws = "aws.usw2"
  }
  name = "relops-vpc"
  cidr = "172.18.0.0/16"

  azs             = ["us-west-2a", "us-west-2b", "us-west-2c"]
  public_subnets  = ["172.18.101.0/24", "172.18.102.0/24", "172.18.103.0/24"]

  enable_dns_hostnames = true

  tags = {
    Owner       = "relops"
    Environment = "dev"
    Terraform   = "true"
  }
}
