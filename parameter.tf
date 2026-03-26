resource "aws_ssm_parameter" "VPC-id" {
  name  = "/${var.project}/${var.environment}/vpc-id"
  type  = "String"
  value = module.VPC.vpc-id # Module reference
}

resource "aws_ssm_parameter" "Public-Subnet-id" {
  name  = "/${var.project}/${var.environment}/public-subnet-id"
  type  = "StringList"
  value = module.VPC.Public-Subnet # Module reference
}