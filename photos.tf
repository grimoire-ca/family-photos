terraform {
  backend "s3" {
    bucket = "terraform.grimoire"
    key    = "photos.tfstate"
    region = "ca-central-1"
  }
}

provider "aws" {
  version = "~> 2.11"

  region = "ca-central-1"
}

resource "aws_s3_bucket" "photos" {
  acl = "private"

  lifecycle_rule {
    enabled = true

    transition {
      days          = 7
      storage_class = "GLACIER"
    }
  }

  tags = {
    Project = "family-photos"
  }
}

