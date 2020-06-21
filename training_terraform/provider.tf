provider "aws" {
  region = "${var.region}"
}
resource "aws_vpc" "main" {

  cidr_block = "${var.vpc_cidr}"
  instance_tenancy = "default"
  tags = {
    Name = "Main"
    Location = "Toulouse"
  }
}
resource "aws_subnet" "subnets" {
  count = "${length(var.azs)}"
  cidr_block = element(var.subnet_cidr,count.index )
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "Subnet1"

  }
}