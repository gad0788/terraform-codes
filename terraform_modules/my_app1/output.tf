output "pip" {
  value = aws_instance.webserver.public_ip
}
output "private_ip" {
  value = aws_instance.webserver.private_ip
}