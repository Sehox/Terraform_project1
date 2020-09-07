region = "eu-west-1"

availability_zones = ["eu-west-1a", "eu-west-1b"]

namespace = "2j43"

stage = "rdd"

name = "alb"

environment = "int"

attributes = ["ipsec", "att2"]

vpc_cidr_block = "172.16.0.0/16"

vpc_id = "vpc-0ba5de3178254a817"

private_subnet_id = ["subnet-04622a0cb9c284241", "subnet-0542f301e192909b5"]

security_group_id = ["", ""]

internal = false

http_enabled = true

http_redirect = false

access_logs_enabled = true

alb_access_logs_s3_bucket_force_destroy = true

access_logs_region = "eu-west-1"

cross_zone_load_balancing_enabled = false

http2_enabled = true

idle_timeout = 60

ip_address_type = "ipv4"

deletion_protection_enabled = false

deregistration_delay = 15

health_check_path = "/"

health_check_timeout = 10

health_check_healthy_threshold = 2

health_check_unhealthy_threshold = 2

health_check_interval = 15

health_check_matcher = "200-399"

target_group_port = 80

target_group_target_type = "lambda"

stickiness = {
  cookie_duration = 60
  enabled         = true
}
