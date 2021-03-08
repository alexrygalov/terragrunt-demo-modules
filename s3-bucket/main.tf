resource "aws_s3_bucket" "this" {
  bucket_prefix = "${var.environment}-${var.project}-app-s3"
  acl           = "public-read"
  force_destroy = true

  website {
    index_document = "index.html"
    error_document = "index.html"
  }

  tags = {
    Name        = "app-s3-${var.project}-${var.environment}"
    Project     = var.project
    Environment = var.environment
  }
}