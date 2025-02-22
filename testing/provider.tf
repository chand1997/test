terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }
   backend "s3" {
    bucket = "test-bucket"
    key    = "testing"
    region = "us-east-1"
    dynamodb_table="expense-project-dev-bucket-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}