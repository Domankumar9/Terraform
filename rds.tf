resource "aws_db_instance" "rds" {
  db_subnet_group_name = aws_db_subnet_group.rds-2.id
  engine = "mysql"
  db_name = "rds"
  allocated_storage = 8
  engine_version = "8.0.28"
  instance_class = "db.t2.micro"
  multi_az = true
  username  = "doman"
  password = "Doman"
  vpc_security_group_ids = [aws_security_group.doman2.id]
  skip_final_snapshot = true
}
