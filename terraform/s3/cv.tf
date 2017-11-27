module "cv" {
  content = "application/pdf"
  path = "../../../cv/cv.pdf"
  source = "../modules/s3_objects/base"
  bucket = "${aws_s3_bucket.godfried-de.id}"
}
