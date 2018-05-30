# As of 0.9.0, remote state is configured through the new backend system
# See https://www.terraform.io/docs/backends/legacy-0-8.html

terraform {
  backend "s3" {
    bucket = "relops-terraform-states"
    key    = "tf_state/relops_terraform_base_env/terraform.tfstate"
    dynamodb_table = "relops_terraform_base_env_terraform_state_lock"
    region = "us-east-1"
  }
}
