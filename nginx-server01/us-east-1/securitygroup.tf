
resource "aws_security_group" "dev-nginx_ssh" {
  name        = "dev-nginx_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = "vpc-0819e1f3a4d7556da"

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks_ssh
  }

}

resource "aws_security_group" "dev-nginx_http" {
  name        = "dev-nginx_http"
  description = "Allow http inbound traffic"
  vpc_id      = "vpc-0819e1f3a4d7556da"

  ingress {
    description      = "Http from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks_http
  }

}

resource "aws_security_group" "dev-nginx_https" {
  name        = "dev-nginx_https"
  description = "Allow https inbound traffic"
  vpc_id      = "vpc-0819e1f3a4d7556da"

  ingress {
    description      = "Http from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks_https
  }
}
