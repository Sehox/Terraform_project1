output "alb_name" {
  description = "The ARN suffix of the ALB"
  value       = module.alb.alb_name
}

output "alb_arn" {
  description = "The ARN of the ALB"
  value       = module.alb.alb_arn
}

output "alb_arn_suffix" {
  description = "The ARN suffix of the ALB"
  value       = module.alb.alb_arn_suffix
}

output "alb_dns_name" {
  description = "DNS name of ALB"
  value       = module.alb.alb_dns_name
}

output "alb_zone_id" {
  description = "The ID of the zone which ALB is provisioned"
  value       = module.alb.alb_zone_id
}

output "security_group_id" {
  description = "The security group ID of the ALB"
  value       = module.alb.security_group_id
}

output "default_target_group_arn" {
  description = "The default target group ARN"
  value       = module.alb.default_target_group_arn
}

output "http_listener_arn" {
  description = "The ARN of the HTTP listener"
  value       = module.alb.http_listener_arn
}

output "listener_arns" {
  description = "A list of all the listener ARNs"
  value       = module.alb.listener_arns
}

# output "access_logs_bucket_id" {
#   description = "The S3 bucket ID for access logs"
#   value       = module.alb.access_logs_bucket_id
# }

output "hostnames" {
  value       = module.route53_private_zone_with_alb_alias.hostnames
  description = "List of DNS records"
}


output "alb_alias_name" {
  value       = module.route53_private_zone_with_alb_alias.alb_alias_name
  description = "List of DNS records names"
}

output "private_alb_hosted_zone_id" {
    # value       = aws_route53_zone.private.zone_id
    value       = module.route53_private_zone_with_alb_alias.private_alb_hosted_zone_id
    description = "private_alb_hosted_zone ID"
}