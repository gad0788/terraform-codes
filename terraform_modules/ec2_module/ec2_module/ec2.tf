module "ec2_instance" {
  source        = "../"
  ami           = "ami-0d191299f2822b1fa"
  instance_type = "t2.micro"
  region        = "us-east-1"
  profile       = "default"

}