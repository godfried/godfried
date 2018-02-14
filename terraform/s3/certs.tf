resource "aws_s3_bucket_object" "letsencrypt-1" {
  bucket = "${aws_s3_bucket.godfried-de.id}"
  source = "../../resources/certs/acme-1"
  etag   = "${md5(file("../../resources/certs/acme-1"))}"
  content_type = "text/plain"
  key = ".well-known/acme-challenge/rNoZgti_IHis5WyyvxN96lRT6v_HJ2csgc9-rVBTg-o"
  acl = "public-read"
}
