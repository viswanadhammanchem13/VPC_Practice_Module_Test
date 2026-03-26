resource "aws_ssm_parameter" "VPC-id" {
  name  = "/${var.project}/${var.environment}/vpc-id"
  type  = "String"
  value = module.VPC.vpc-id # Module reference
}

resource "aws_ssm_parameter" "public-subnet" {
  name  = "/${var.project}/${var.environment}/public-subnet"
  type  = "StringList"
  value = join(",", module.VPC.public-subnet) # Module reference and match with output variable name in VPC_Practice_Module_Test/output.tf,
}# type should be StringList as we are passing list of subnets which are in string format and we are joining them with comma to make it a single string

resource "aws_ssm_parameter" "private-subnet" {
  name  = "/${var.project}/${var.environment}/private-subnet"
  type  = "StringList"
  value = join(",", module.VPC.private-subnet) # Module reference
}

resource "aws_ssm_parameter" "database-subnet" {
  name  = "/${var.project}/${var.environment}/database-subnet"
  type  = "StringList"
  value = join(",", module.VPC.database-subnet) # Module reference
}