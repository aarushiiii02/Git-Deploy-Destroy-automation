resource "aws_instance" "web" {
  ami           = "ami-08e2d37b6a0129927"
  instance_type = "t2.micro"

  tags = {
    Name = var.name
  }
}
resource "aws_s3_bucket" "b" {
  bucket = var.bucket_name2

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}