resource "aws_s3_bucket_object" "object" {
  bucket = "${var.bucket}"
  source = "${var.path}"
  etag   = "${md5(file("${var.path}"))}"
  content_type = "${var.content}"
  key = "${replace("${var.path}", "../", "")}"
}
	