terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket = "fumi-sre-terraform"
    key    = "prod/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

# Should be the us-east-1 region for CloudFront
provider "aws" {
  alias  = "acm_provider"
  region = "us-east-1"
}
