resource "aws_lightsail_instance" "server1" {
  name              = "dev-server"
  blueprint_id      = var. blueprint
  bundle_id         = var.bundle_id
  availability_zone = var.availability_zone
  user_data         = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install -y apache2
              sudo systemctl start apache2
              sudo systemctl enable apache2
              echo '<h1>This is deployed by Gad </h1>' | sudo tee /var/www/html/index.html
              EOF
}