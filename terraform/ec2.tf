resource "aws_instance" "myvm1" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = "mykey"
  subnet_id     = aws_subnet.mysubnet["us-east-1a"].id

  vpc_security_group_ids = [
    aws_security_group.mysecurity.id,
  ]

  tags = {
    Name = "myvm1"
  }
}

resource "aws_instance" "mvm2" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = "firstkey"
  subnet_id     = aws_subnet.mysubnet["us-east-1b"].id

  vpc_security_group_ids = [
    aws_security_group.mysecurity.id,
  ]

  tags = {
    Name = "myvm2"
  }
}
