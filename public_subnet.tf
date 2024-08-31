resource "aws_subnet" "public-3" {
  vpc_id = aws_vpc.vpc1.id
  map_public_ip_on_launch = true
  availability_zone = "ap-south-1a"
  cidr_block = "10.0.208.0/20"

  tags = {
    Name = "public-3"
  }
}
resource "aws_subnet" "public-2" {
  vpc_id = aws_vpc.vpc1.id
  map_public_ip_on_launch = true
  availability_zone = "ap-south-1a"
  cidr_block = "10.0.224.0/19"

  tags = {
    Name = "public-2"
  }
}  
