provider "aws" {
  region = var.region
}

module "alb" {
  source                                  = "../../modules/alb"
  namespace                               = var.namespace
  stage                                   = var.stage
  name                                    = var.alb_name 
  environment                             = var.environment
  attributes                              = compact(concat(var.attributes, ["ipsec2"]))
  delimiter                               = var.delimiter
  vpc_id                                  = var.vpc_id
  #security_group_ids                      = var.security_group_id
  subnet_ids                              = [data.aws_subnet.private_subnet_1.id, data.aws_subnet.private_subnet_2.id]
  internal                                = var.internal
  http_enabled                            = var.http_enabled
  http_redirect                           = var.http_redirect
  access_logs_enabled                     = var.access_logs_enabled
  alb_access_logs_s3_bucket_force_destroy = var.alb_access_logs_s3_bucket_force_destroy
  access_logs_region                      = var.access_logs_region
  cross_zone_load_balancing_enabled       = var.cross_zone_load_balancing_enabled
  http2_enabled                           = var.http2_enabled
  idle_timeout                            = var.idle_timeout
  ip_address_type                         = var.ip_address_type
  deletion_protection_enabled             = var.deletion_protection_enabled
  deregistration_delay                    = var.deregistration_delay
  health_check_path                       = var.health_check_path
  health_check_timeout                    = var.health_check_timeout
  health_check_healthy_threshold          = var.health_check_healthy_threshold
  health_check_unhealthy_threshold        = var.health_check_unhealthy_threshold
  health_check_interval                   = var.health_check_interval
  health_check_matcher                    = var.health_check_matcher
  target_group_port                       = var.target_group_port
  target_group_target_type                = var.target_group_target_type
  stickiness                              = var.stickiness
  tags                                    = var.tags
}

resource "aws_lambda_permission" "with_lb" {
  statement_id  = "AllowExecutionFromlb"
  action        = "lambda:InvokeFunction"
  function_name = data.aws_lambda_function.lambda_1.arn
  principal     = "elasticloadbalancing.amazonaws.com"
  source_arn    = module.alb.default_target_group_arn
}

resource "aws_lb_target_group_attachment" "attach_lambda_alb" {
  target_group_arn = module.alb.default_target_group_arn
  target_id        = data.aws_lambda_function.lambda_1.arn
  depends_on       = [aws_lambda_permission.with_lb]
}


module "route53_private_zone_with_alb_alias" {
  source             = "./modules/route53"
  name               = var.project1_int_private_hosted_zone_dns_name
  vpc_id             = var.vpc_id
  aliases            = ["test-alias"]
  target_dns_name    = module.alb.alb_dns_name
  target_zone_id     = module.module.alb.alb_zone_id
  depends_on         = [module.alb]

  tags               = var.tags
}

