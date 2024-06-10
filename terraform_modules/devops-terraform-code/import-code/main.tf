
resource "aws_instance" "wb" {
  ami                                  = "ami-00beae93a2d981137"
  associate_public_ip_address          = true
  availability_zone                    = "us-east-1a"
 
  instance_type                        = "t2.micro"
  ipv6_addresses                       = []
  key_name                             = "ec2-key"
  monitoring                           = false
  security_groups                      = ["launch-wizard-1"]
  source_dest_check                    = true
  subnet_id                            = "subnet-035a3210c6cf59a81"
  tags = {
    Name = "webserver"
  }
  tags_all = {
    Name = "created by Terraform"
  }
}