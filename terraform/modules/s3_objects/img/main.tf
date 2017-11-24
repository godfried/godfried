module "img" {
  source = "../base"
  content = "image/jpeg"
  path = "${var.path}"
  bucket = "${var.bucket}"
}