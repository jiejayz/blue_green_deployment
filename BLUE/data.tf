data "aws_ami" "instance_ami" {
  owners = ["self"]
  filter {
    name   = "name"
    values = [var.build_id]
  }
}

data "aws_vpc" "production_blue" {
  tags = {
    Environment = var.prod_environment
  }
}

data "aws_internet_gateway_blue" "gw" {
  tags = {
    Environment = var.prod_environment
  }
}

data "aws_route53_zone" "terraform-blue-green" {
  name = var.project_domain
}

