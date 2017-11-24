module "html" {
  source = "../base"
  content = "text/html"
  path = "${var.path}"
  bucket = "${var.bucket}"
}