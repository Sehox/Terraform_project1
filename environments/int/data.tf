data "aws_subnet" "private_subnet_1" {
  vpc_id     = var.vpc_id
  tags = {
    Name = "private_subnet_1_project_01_int"
  }
}
data "aws_subnet" "private_subnet_2" {
  vpc_id     = var.vpc_id
  tags = {
    Name = "private_subnet_2_project_01_int"
  }
}

data "aws_lambda_function" "lambda_1" {
  function_name = "list_ASH"
}

