terraform {
  backend "s3" {
    bucket         = "godfried-terraform-state"
    key            = "remote-state/terraform.tfstate"
    region         = "eu-central-1"
    profile        = "personal"
    encrypt        = "true"
  }
}
