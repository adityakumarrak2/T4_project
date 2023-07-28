resource "aws_s3_bucket" "tictoc" {
  bucket = "T4_project007 bucket"
  acl = "private"
  tags = {
    Name = "T4_project007_S3__provisioning"
  }
}
