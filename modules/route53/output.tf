output "hostnames" {
  value       = aws_route53_record.route53_record_alb_alias.*.fqdn
  description = "List of DNS records"
}


output "alb_alias_name" {
  value       = aws_route53_record.route53_record_alb_alias.*.name
  description = "List of DNS records"
}

output "private_alb_hosted_zone_id" {
    value       = aws_route53_zone.private.zone_id
    description = "private_alb_hosted_zone ID"
}

output "private_alb_hosted_zone_id" {
    value       = aws_route53_zone.private.name_servers
    description = "private_alb_hosted_zone name_servers"
}

