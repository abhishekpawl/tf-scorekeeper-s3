resource "aws_s3_object" "object" {
  bucket       = aws_s3_bucket.tf_bucket.id
  key          = "index.html"
  source       = "index.html"
  content_type = "text/html"
}