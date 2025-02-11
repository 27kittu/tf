resource "aws_s3_bucket" "b1" {
  bucket = "b1-new1"
}

resource "aws_instance" "web" {
  ami           = "i-k24k35k45k35" 
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
