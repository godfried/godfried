module "tether-js" {
  path = "../../resources/vendor/tether/js/tether.min.js"
  source = "../modules/s3_objects/js"
  bucket = "${aws_s3_bucket.godfried-de.id}"
}
