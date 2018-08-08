# relops-log-bucket is a central repository bucket for sending relops s3 logs
resource "aws_s3_bucket" "relops_log_bucket" {
  bucket = "relops-log-bucket"
  acl = "log-delivery-write"
}


# relops-bin-storage is a general use large binary storage bucket
resource "aws_s3_bucket" "relops_bin_storage" {
  bucket = "relops-bin-storage"
  acl = "private"
  versioning {
    enabled = false
  }

  logging {
    target_bucket = "${aws_s3_bucket.relops_log_bucket.id}"
    target_prefix = "logs/relops-bin-storage/"
  }
}

