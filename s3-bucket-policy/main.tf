resource "aws_s3_bucket_policy" "this" {
  bucket = var.s3_bucket_id

  policy = jsonencode({
    Version   = "2008-10-17"
    Id        = "APPCNDPOLICY"
    Statement = [
      {
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = [
          "${var.s3_bucket_arn}/*",
        ]
      },
    ]
  })
}