variable "region" {
  default = "eu-west-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  default = "ami-03cc8375791cb8bcf"
}

variable "vpc_cidr" {
  default = "10.0.0.0/8"
}

variable "public_subnet_cidr" {
}
