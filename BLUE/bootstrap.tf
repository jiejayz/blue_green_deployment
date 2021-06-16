variable "infrastructure_version" {
  default = "1"
}

terraform {
  backend "s3" {
    bucket = "01-prod-uction-blue"
    region = "us-west-1"
    key    = "global/s3/terraform.tfstate"
  }
}

