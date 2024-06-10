data "aws_ami" "name1" {
  executable_users = ["self"]
  most_recent      = true

  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm*-x86_64-ebs"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
resource "aws_instance" "name1" {
  ami = data.aws_ami.name1.id
  instance_type = data.aws_ami.name1.instance_type
  key_name = data.aws_ami.name1.key_name
}