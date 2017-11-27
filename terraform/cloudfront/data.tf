data "terraform_remote_state" "s3" {
  backend = "s3"
  config {
    bucket = "${var.remote_state_bucket}"
    key = "s3/terraform.tfstate"
    region = "${var.aws_region}"
  }
}