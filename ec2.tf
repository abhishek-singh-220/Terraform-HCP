provider "aws" {
  region = var.aws_region
}

variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default = "us-east-1"
}

variable "region"{
 type = map(string)
 default = {
   ap-southeast = "ami-00392df720ebc45d1"
   us-east-1 = "ami-000750470f5687d65"
 }
}




