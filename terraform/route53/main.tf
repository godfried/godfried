provider "aws" {
  profile = "${var.aws_profile}"
  region  = "${var.aws_region}"
}

resource "aws_route53_zone" "godfried-de" {
  name = "godfried.de."
  comment = "HostedZone created by Route53 Registrar"
  vpc_region = ""
}

resource "aws_route53_record" "a" {
  zone_id = "${aws_route53_zone.godfried-de.zone_id}"
  name = "godfried.de."
  type = "A"
  alias {
    evaluate_target_health = "false"
    name = "${data.terraform_remote_state.cloudfront.domain_name}"
    zone_id = "Z2FDTNDATAQYW2"
  }
}

resource "aws_route53_record" "aaaa" {
  zone_id = "${aws_route53_zone.godfried-de.zone_id}"
  name = "godfried.de."
  type = "AAAA"
  alias {
    evaluate_target_health = "false"
    name = "${data.terraform_remote_state.cloudfront.domain_name}"
    zone_id = "Z2FDTNDATAQYW2"
  }
}

resource "aws_route53_record" "www-a" {
  zone_id = "${aws_route53_zone.godfried-de.zone_id}"
  name = "www.godfried.de."
  type = "A"
  alias {
    evaluate_target_health = "false"
    name = "${data.terraform_remote_state.cloudfront.domain_name}"
    zone_id = "Z2FDTNDATAQYW2"
  }
}

resource "aws_route53_record" "www-aaaa" {
  zone_id = "${aws_route53_zone.godfried-de.zone_id}"
  name = "www.godfried.de."
  type = "AAAA"
  alias {
    evaluate_target_health = "false"
    name = "${data.terraform_remote_state.cloudfront.domain_name}"
    zone_id = "Z2FDTNDATAQYW2"
  }
}				    

resource "aws_route53_record" "ns" {
  zone_id = "${aws_route53_zone.godfried-de.zone_id}"
  name = "godfried.de."
  type = "NS"
  ttl = 60
  records = ["ns-273.awsdns-34.com.", "ns-1862.awsdns-40.co.uk.", "ns-1330.awsdns-38.org.", "ns-844.awsdns-41.net."]
  ttl = "172800"
}

resource "aws_route53_record" "soa" {
  zone_id = "${aws_route53_zone.godfried-de.zone_id}"
  name = "godfried.de."
  type = "SOA"
  ttl = 900
  records = ["ns-844.awsdns-41.net. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
}
