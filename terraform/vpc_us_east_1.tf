module "vpc_use1" {
  source = "terraform-aws-modules/vpc/aws"
  providers {
    aws = "aws.use1"
  }
  name = "relops-vpc"
  cidr = "172.19.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  public_subnets  = ["172.19.101.0/24", "172.19.102.0/24", "172.19.103.0/24"]

  enable_dns_hostnames = true

  tags = {
    Owner       = "relops"
    Environment = "dev"
    Terraform   = "true"
  }
}
