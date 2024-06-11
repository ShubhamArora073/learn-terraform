resource "aws_instance" "webserver" {
  ami           = "ami-01e444924a2233b07"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.zonea_public_subnet.id

  tags = {
    Name = "Web Server"
    Team = "DevOps"
  }
}