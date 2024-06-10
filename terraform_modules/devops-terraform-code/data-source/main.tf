terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.53.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}
data "aws_instance" "ec2" {
  instance_id = "i-00a0ff1fa7993d678"
}
resource "aws_instance" "demo" {
 ami = data.aws_instance.ec2.ami
 instance_type = data.aws_instance.ec2.instance_type
 key_name = data.aws_instance.ec2.key_name
}
