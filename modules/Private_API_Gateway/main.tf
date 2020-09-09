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


resource "aws_api_gateway_rest_api" "private_api_gateway" {
  name               = module.default_label.id
  tags               = module.default_label.tags
  attributes         = compact(concat(var.attributes, ["private", "apigw"]))
  description        = "Private api gateway"

  endpoint_configuration {
    types = ["PRIVATE"]
    vpc_endpoint_ids = var.vpc_endpoint_ids
  }
}