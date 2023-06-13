resource "aws_s3_bucket_policy" "tf_public_read_access" {
  bucket = aws_s3_bucket.tf_bucket.id
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
	    "Principal": "*",
      "Action": [ "s3:GetObject" ],
      "Resource": [
        "${aws_s3_bucket.test-bucket.arn}",
        "${aws_s3_bucket.test-bucket.arn}/*"
      ]
    }
  ]
}
EOF
}