terraform {
  required_version = ">=0.13.1"
  required_providers {
    aws = ">=5.98.0"
    local = ">=2.5.3"
  }
}

provider "aws" {
  region = "us-east-1"
}