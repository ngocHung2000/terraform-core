# Development - Project B - Networking
include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../../modules/networking/vpc"
}

inputs = {
  vpc_cidr = "10.10.0.0/16"
  public_subnet_cidrs = ["10.10.1.0/24", "10.10.2.0/24"]
  private_subnet_cidrs = ["10.10.11.0/24", "10.10.12.0/24"]
  availability_zones = ["ap-southeast-1a", "ap-southeast-1b"]
  enable_nat_gateway = false
}
