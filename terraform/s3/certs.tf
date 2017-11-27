resource "aws_s3_bucket_object" "letsencrypt-1" {
  bucket = "${aws_s3_bucket.godfried-de.id}"
  source = "../../resources/certs/acme-1"
  etag   = "${md5(file("../../resources/certs/acme-1"))}"
  content_type = "text/plain"
  key = ".well-known/acme-challenge/gE4I8kR3E7STzdvz_FM1IZEeRoGf-6eS8-0yB7V2pUA"
  acl = "public-read"
}

resource "aws_s3_bucket_object" "letsencrypt-2" {
  bucket = "${aws_s3_bucket.www-godfried-de.id}"
  source = "../../resources/certs/acme-2"
  etag   = "${md5(file("../../resources/certs/acme-2"))}"
  content_type = "text/plain"
  key = ".well-known/acme-challenge/e1su7upTBKOiH_fGCeVfivj0-0GsWUDP2RGaX3bgaXA"
  acl = "public-read"
}
