terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.16.0" #Aws provider version, not terraform version
    }
  }
  backend "s3" {
    bucket = "kummo-kammo-kemmo-bucket"
    key = "envs/dev/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-locks"
    
  }
}

provider "aws" {
  # Configuration options
    region = "us-east-1"
}