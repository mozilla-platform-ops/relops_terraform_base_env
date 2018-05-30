provider "aws" {
    version = "~> 1.13"
    region  = "${var.region}"
    profile = "${var.profile}"
}

provider "aws" {
    alias   = "usw2"
    region  = "us-west-2"
    profile = "${var.profile}"
}

provider "aws" {
    alias   = "use1"
    region  = "us-east-1"
    profile = "${var.profile}"
}

