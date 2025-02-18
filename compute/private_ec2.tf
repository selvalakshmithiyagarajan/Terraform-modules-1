resource "aws_instance" "private-server" {
  count = var.environment == "production" ? 3 : 1  # ✅ Correct reference
  ami                    = lookup(var.amis, var.selected_region)
  instance_type          = "t2.micro"
  key_name               = var.key_name
  subnet_id              = element(var.private_subnet, count.index)
  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name        = "${var.vpc_name}-Private-Server-${count.index + 1}"
    environment = "production"  # This is a string, no change needed
  }

  user_data = <<-EOF
    #!/bin/bash
    sudo apt update
    sudo apt install nginx -y
    sudo apt install git -y
    sudo git clone https://github.com/saikiranpi/SecOps-game.git
    sudo rm -rf /var/www/html/index.nginx-debian.html
    sudo cp SecOps-game/index.html /var/www/html/index.html
    echo "<h1>${var.vpc_name}-Private-Server-${count.index + 1}</h1>" >> /var/www/html/index.html
    sudo systemctl start nginx
    sudo systemctl enable nginx
  EOF
}