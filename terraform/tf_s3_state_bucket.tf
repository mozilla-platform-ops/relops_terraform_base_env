resource "aws_s3_bucket" "state_bucket" {
    bucket = "relops-terraform-states"
    acl = "private"
    versioning {
        enabled = true
    }
}

