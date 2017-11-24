module "font-awesome-css" {
  source = "../modules/s3_objects/css"
  path = "../../resources/vendor/font-awesome/css/font-awesome.min.css"
  bucket = "${aws_s3_bucket.godfried-de.id}"
}

module "font-awesome-font-otf" {
  source = "../modules/s3_objects/base"
  path = "../../resources/vendor/font-awesome/fonts/FontAwesome.otf"
  content = "font/otf"
  bucket = "${aws_s3_bucket.godfried-de.id}"
}

module "font-awesome-font-eot" {
  source = "../modules/s3_objects/base"
  path = "../../resources/vendor/font-awesome/fonts/fontawesome-webfont.eot"
  content = "application/vnd.ms-fontobject"
  bucket = "${aws_s3_bucket.godfried-de.id}"
}

module "font-awesome-font-svf" {
  source = "../modules/s3_objects/base"
  path = "../../resources/vendor/font-awesome/fonts/fontawesome-webfont.svg"
  content = "image/svg+xml"
  bucket = "${aws_s3_bucket.godfried-de.id}"
}

module "font-awesome-font-ttf" {
  source = "../modules/s3_objects/base"
  path = "../../resources/vendor/font-awesome/fonts/fontawesome-webfont.ttf"
  content = "font/ttf"
  bucket = "${aws_s3_bucket.godfried-de.id}"
}

module "font-awesome-font-woff" {
  source = "../modules/s3_objects/base"
  path = "../../resources/vendor/font-awesome/fonts/fontawesome-webfont.woff"
  content = "font/woff"
  bucket = "${aws_s3_bucket.godfried-de.id}"
}

module "font-awesome-font-woff2" {
  source = "../modules/s3_objects/base"
  path = "../../resources/vendor/font-awesome/fonts/fontawesome-webfont.woff2"
  content = "font/woff2"
  bucket = "${aws_s3_bucket.godfried-de.id}"
}
