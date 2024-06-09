module "aws_lightsail_instance" {
  source = "../"
  blueprint = "ubuntu_22_04"
bundle_id = "medium_1_0"
availability_zone = "us-east-1a"
region = "us-east-1"
profile = "default"

}