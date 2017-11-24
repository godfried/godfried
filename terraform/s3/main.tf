provider "aws" {
  profile = "${var.aws_profile}"
  region  = "${var.aws_region}"
}

resource "aws_s3_bucket" "godfried-de" {
  bucket = "godfried.de"

  website {
    index_document = "index.html"
  }
  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket" "www-godfried-de" {
  bucket = "www.godfried.de"
  website {
    redirect_all_requests_to = "godfried.de"
  }

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_policy" "godfried-de" {
  bucket = "${aws_s3_bucket.godfried-de.id}"
  policy =<<POLICY
    {
      "Version": "2012-10-17",
      "Statement":
      [
        {
          "Sid": "PublicReadGetObject",
          "Effect": "Allow",
          "Principal": "*",
          "Action": "s3:GetObject",
          "Resource": "arn:aws:s3:::godfried.de/*"
        }
      ]
    }
POLICY
}

resource "aws_s3_bucket_object" "index" {
  source = "../../resources/html/index.html"
  etag = "${md5(file("../../resources/html/index.html"))}"
  bucket = "${aws_s3_bucket.godfried-de.id}"
  key = "index.html"
  content_type = "text/html"
}

module "css" {
  source = "../modules/s3_objects/css"
  path = "../../resources/css/grayscale.min.css"
  bucket = "${aws_s3_bucket.godfried-de.id}"
}

module "js" {
  source = "../modules/s3_objects/js"
  path = "../../resources/js/grayscale.min.js"
  bucket = "${aws_s3_bucket.godfried-de.id}"
}

module "intro-img" {
  source = "../modules/s3_objects/img"
  path = "../../resources/img/intro-bg.jpg"
  bucket = "${aws_s3_bucket.godfried-de.id}"
}

module "cv-img" {
  source = "../modules/s3_objects/img"
  path = "../../resources/img/cv-bg.jpg"
  bucket = "${aws_s3_bucket.godfried-de.id}"
}
