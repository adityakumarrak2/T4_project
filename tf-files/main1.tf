resource "aws_s3_bucket" "tictoc" {
  bucket = "t4-project007-bucket"
  acl = "private"
  tags = {
    Name = "t4-project005-s3-provisioning"
  }
}
