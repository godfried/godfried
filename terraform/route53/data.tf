data "terraform_remote_state" "cloudfront" {
  backend = "s3"
  config {
    bucket = "${var.remote_state_bucket}"
    key = "cloudfront/terraform.tfstate"
    region = "${var.aws_region}"
  }
}