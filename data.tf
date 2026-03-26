

data "aws_subnets" "Public_Subnets" {
  filter {
    name   = "${var.project}-${var.environment}-public-${local.Az-info[0]}"
    values = [module.VPC.Public-Subnet[0]] # Module reference
  }
}