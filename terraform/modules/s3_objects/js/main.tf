module "js" {
  source = "../base"
  content = "application/javascript"
  path = "${var.path}"
  bucket = "${var.bucket}"
}