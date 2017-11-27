terraform {
  backend "s3" {
    bucket         = "godfried-terraform-state"
    key            = "route53/terraform.tfstate"
    region         = "eu-central-1"
    profile        = "personal"
    encrypt        = "true"
  }
}
