resource "aws_security_group" "doman" {
  name = "doman"
  description = "Allow TLS inbound traffic"
  vpc_id = aws_vpc.vpc1.id
  
  ingress {
    description = "TLS from VPC"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "TLS from VPC"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "TLS from VPC"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_block = ["::/0"]
  }
  tage = {
    Name = "doman"
  }
}
