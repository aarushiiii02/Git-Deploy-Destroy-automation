resource "aws_instance" "web" {
  ami           = "ami-026b57f3c383c2eec"
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