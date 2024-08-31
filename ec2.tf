resource "aws_instance" "terraform2" {
  ami = "ami-02b49a24cfb95941c"
  instance_type = "t2.micro"
  availability_zone = "ap-south-1a"
  key_name = "ASG"
  vpc_security_group_ids = [aws_security_group.doman.id]
  subnet_id = "aws_subnet.public-3.id"
  associate_public_ip_address = "true"
  user_data = "${file("userdata.sh")}"
  tags = {
    Name = "terraform2"
  }
}
resource "aws_instance" "terraform3" {
  ami = "ami-02b49a24cfb95941c"
  instance_type = "t2.micro"
  availability_zone = "ap-south-1a"
  key_name = "ASG"
  vpc_security_group_ids = [aws_security_group.doman.id]
  subnet_id = "aws_subnet.public-3.id"
  associate_public_ip_address = "true"
  user_data = "${file("userdata.sh")}"
  tags = {
    Name = "terraform3"
  }
}
