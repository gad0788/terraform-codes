resource "aws_instance" "artifactory-server" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    name = "dev-server"
    Team = "DevOps"
  }

}