provider "aws" {
  region = var.selected_region
}

terraform {
  backend "s3" {
    bucket = "developmentbucket0190"
    key    = "production.tfstate"
    region = "us-east-1"
  }
}