terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.1"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAQ7ZFBKBUOTU63DUM"
  secret_key = "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"
}