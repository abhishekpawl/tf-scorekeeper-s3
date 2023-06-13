resource "aws_s3_bucket_website_configuration" "tf_website" {
  bucket = aws_s3_bucket.tf_bucket.id

  index_document {
    suffix = "index.html"
  }
}