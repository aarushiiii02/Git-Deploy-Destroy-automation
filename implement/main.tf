module "ec2-inst" {
  source = "../ec2"
  name = "implementation-modules"
  bucket_name2 = "as2002"
}
module "s3-bucket" {
  source = "../s3"
  bucket_name = "dashy33"
}
module "vpc" {
   source = "../vpc"
   cidr  = "10.0.0.0/16"
 }