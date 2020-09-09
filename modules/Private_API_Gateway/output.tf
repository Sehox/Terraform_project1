output "aws_api_gateway_rest_api_ID" {
  value       = aws_api_gateway_rest_api.private_api_gateway.id
  description = "aws_api_gateway_rest_api_ID"
}

output "aws_api_gateway_rest_api_root_resource_id" {
  value       = aws_api_gateway_rest_api.private_api_gateway.root_resource_id
  description = "aws_api_gateway_rest_api_root_resource_id"
}

output "aws_api_gateway_rest_api_created_date" {
  value       = aws_api_gateway_rest_api.private_api_gateway.created_date
  description = "aws_api_gateway_rest_api_created_date"
}

output "aws_api_gateway_rest_api_execution_arn" {
  value       = aws_api_gateway_rest_api.private_api_gateway.execution_arn
  description = "aws_api_gateway_rest_api_execution_arn"
}

output "aws_api_gateway_rest_api_arn" {
  value       = aws_api_gateway_rest_api.private_api_gateway.arn
  description = "aws_api_gateway_rest_api_arn"
}