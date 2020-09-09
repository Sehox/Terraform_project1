module "default_label" {
  # source      = "git::https://github.com/cloudposse/terraform-null-label.git?ref=tags/0.17.0"
  source      = "../null-label"

  attributes  = var.attributes
  delimiter   = var.delimiter
  name        = var.name
  namespace   = var.namespace
  stage       = var.stage
  environment = var.environment
  tags        = var.tags
}



resource "aws_route53_zone" "private" {
  name               = module.default_label.id
  # attributes         = compact(concat(var.attributes, ["private", "zone"]))
  tags               = module.default_label.tags

  vpc {
    vpc_id = var.vpc_id
  }
}
# resource "aws_route53_zone_association" "secondary" {
#   zone_id = aws_route53_zone.private.zone_id
#   vpc_id  = var.vpc_id
# }

resource "aws_route53_record" "route53_record_alb_alias" {
  zone_id    = aws_route53_zone.private.zone_id
  name       = module.default_label.id
  # attributes = compact(concat(var.attributes, ["alb", "alias"]))
  type       = "A"

  alias {
    name                   = var.target_dns_name
    # zone_id                = aws_route53_zone.private.zone_id
    zone_id                = var.target_zone_id
    evaluate_target_health = true
  }
}