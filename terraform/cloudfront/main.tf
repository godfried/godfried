provider "aws" {
  profile = "${var.aws_profile}"
  region  = "${var.aws_region}"
}

resource "aws_cloudfront_distribution" "godfried" {
  origin {
    domain_name = "${data.terraform_remote_state.s3.website_endpoint}"
    origin_id   = "S3-Website-${data.terraform_remote_state.s3.website_endpoint}"

    custom_origin_config {
        http_port = "80"
	https_port = "443"
	origin_keepalive_timeout = "5"
	origin_protocol_policy = "http-only"
	origin_read_timeout = "30"
	origin_ssl_protocols = ["TLSv1", "TLSv1.1", "TLSv1.2"]
    }
  }	      
  default_cache_behavior {
    compress = "false"
    allowed_methods  = ["HEAD", "GET"]
    cached_methods   = ["HEAD", "GET"]
    target_origin_id = "S3-Website-${data.terraform_remote_state.s3.website_endpoint}"

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }
    viewer_protocol_policy = "redirect-to-https"
    min_ttl = 0
    default_ttl = 86400
    max_ttl = 31536000
  }
  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }
  viewer_certificate  {
    iam_certificate_id = "ASCAJWDYWXYH6O3YXJ26G"
    minimum_protocol_version = "TLSv1.1_2016"
    ssl_support_method = "sni-only"
  }
  enabled = "true"
  aliases = ["godfried.de", "www.godfried.de"]
  is_ipv6_enabled = "true"
  
}
