provider "aws" {
  profile = "${var.aws_profile}"
  region  = "${var.aws_region}"
}

resource "aws_route53_zone" "godfried-de" {
  name = "godfried.de."
  comment = "HostedZone created by Route53 Registrar"
  vpc_region = ""
}

resource "aws_route53_record" "alias" {
  zone_id = "${aws_route53_zone.godfried-de.zone_id}"
  name = "godfried.de."
  type = "A"
  alias {
    evaluate_target_health = "false"
    name = "s3-website.eu-central-1.amazonaws.com"
    zone_id = "Z21DNDUVLTQW6Q"
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
