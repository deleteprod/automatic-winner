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
  default = "178.0.0.0/16"
}

variable "public_subnet_cidr" {
  default = "178.0.10.0/24"
}

# Map of locations against AWS region names
variable "region_map" {
  type = map(string)
  default = {
    dublin    = "eu-west-1"
    london    = "eu-west-2"
    frankfurt = "eu-central-1"
    paris     = "eu-west-3"
  }
}