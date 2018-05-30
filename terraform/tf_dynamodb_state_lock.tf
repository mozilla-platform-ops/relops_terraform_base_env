resource "aws_dynamodb_table" "relops_terraform_base_env_terraform_state_lock" {
  name = "relops_terraform_base_env_terraform_state_lock"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
 
  tags {
    Name = "Relops Terraform Base Env Terraform State Lock Table"
  }
}

resource "aws_dynamodb_table" "timeline_repo_terraform_state_lock" {
  name = "timeline_repo_terraform_state_lock"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
 
  tags {
    Name = "Timeline Repo Terraform State Lock Table"
  }
}
