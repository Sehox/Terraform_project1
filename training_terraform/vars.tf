

variable "region" {
  default = "eu-west-3"

}
variable "vpc_cidr" {
  default = "190.160.0.0/16"
}
variable "subnet_cidr" {
  type = list
  default = ["190.160.1.0/24", "190.160.2.0/24", "190.160.3.0/24"]

}

variable "azs" {
  type = list
  default = ["eu-west-3a", "eu-west-3b", "eu-west-3c"]
}

