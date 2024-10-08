resource "aws_instance" "phobos" {
  ami           = var.ami_id
  instance_type = var.instance_type
  #key_name = var.instance_key
  subnet_id       = aws_subnet.public_subnet.id
  security_groups = [aws_security_group.sg.id]


  user_data = <<-EOF
#!/bin/bash
echo "Installing Apache"
sudo apt update
sudo apt upgrade -y
sudo apt install apache2 -y
echo "Apache installed"
sudo systemctl enable apache2
sudo systemctl start apache2
EOF

  tags = {
    Name = "Phobos Web Server"
  }
}





resource "aws_instance" "deimos" {
  ami           = var.ami_id
  instance_type = var.instance_type
  #key_name = var.instance_key
  subnet_id       = aws_subnet.public_subnet.id
  security_groups = [aws_security_group.sg.id]

  user_data = <<-EOF
#!/bin/bash
echo "Installing Apache"
sudo apt update
sudo apt upgrade -y
sudo apt install apache2 -y
echo "Apache installed"
sudo systemctl enable apache2
sudo systemctl start apache2
EOF

  tags = {
    Name = "Deimos Web Server"
  }

}



