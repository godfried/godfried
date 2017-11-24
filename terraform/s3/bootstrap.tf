module "bootstrap-grid-css" {
  source = "../modules/s3_objects/css"
  path = "../../resources/vendor/bootstrap/css/bootstrap-grid.min.css"
  bucket = "${aws_s3_bucket.godfried-de.id}"
}

module "bootstrap-reboot-css" {
  source = "../modules/s3_objects/css"
  path = "../../resources/vendor/bootstrap/css/bootstrap-reboot.min.css"
  bucket = "${aws_s3_bucket.godfried-de.id}"
}

module "bootstrap-css" {
  source = "../modules/s3_objects/css"
  path = "../../resources/vendor/bootstrap/css/bootstrap.min.css"
  bucket = "${aws_s3_bucket.godfried-de.id}"
}

module "bootstrap-js" {
  source = "../modules/s3_objects/js"
  path = "../../resources/vendor/bootstrap/js/bootstrap.min.js"
  bucket = "${aws_s3_bucket.godfried-de.id}"
}
