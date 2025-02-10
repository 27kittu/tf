resource "aws_s3_bucket" "b1" {
  bucket = "b1-new1"
}

data "aws_ami" "ubuntu" {
  most_recent = true

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
