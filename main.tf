module "VPC" {
    source = "git::https://github.com/viswanadhammanchem13/VPC_Practice.git?ref=main"
    # source = "../VPC_Practice"
    project = var.project
    environment = var.environment
    cidr_block = var.cidr_block
    public_subnet_cidrs = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs
    is_peering_required = true
  
}