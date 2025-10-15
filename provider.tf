terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.16.0"
    }
  }
  backend "s3" {
    bucket = "1996-july-28-bucket"
    key = JP/Infraterraform
    region = "ap-south-1"
    
  }
}
provider "aws" {
    region  = "ap-south-1"
}
