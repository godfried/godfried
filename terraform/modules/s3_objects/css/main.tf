module "css" {
  source = "../base"
  content = "text/css"
  path = "${var.path}"
  bucket = "${var.bucket}"
}