variable "ami" {
  description = "Amazon machine image"
  default = "ami-033a1ebf088e56e81"
  
}
variable "instance_type" {
  default = "t2.micro"
}
variable "region" {
  default = "us-east-1"
}
variable "profile_name" {
  default = "default"
}