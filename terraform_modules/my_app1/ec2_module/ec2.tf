module "ec2-server" {
    source = "../"
    ami= "ami-033a1ebf088e56e81"
    instance_type = "t2.micro"
     region = "us-east-1"
     profile_name = "default"
    
}