# relops-log-bucket is a central repository bucket for sending relops s3 logs
resource "aws_s3_bucket" "relops_log_bucket" {
  bucket = "relops-log-bucket"
  acl = "log-delivery-write"
}

