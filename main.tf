terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.53.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

terraform {
  backend "s3" {
    bucket         = "terraformtfstate073"
    key            = "shubham.tfstate"
    region         = "eu-central-1"
  }
}