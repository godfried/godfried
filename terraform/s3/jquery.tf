module "jquery-js" {
  path = "../../resources/vendor/jquery/js/jquery.min.js"
  source = "../modules/s3_objects/js"
  bucket = "${aws_s3_bucket.godfried-de.id}"
}

module "jquery-easing-js" {
  path = "../../resources/vendor/jquery-easing/js/jquery.easing.min.js"
  source = "../modules/s3_objects/js"
  bucket = "${aws_s3_bucket.godfried-de.id}"
}