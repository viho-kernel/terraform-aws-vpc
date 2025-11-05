module "Roboshop" {
    source = "../terraform-aws-vpc"
    Project_name = var.Project_name
    Environment = var.Environment
    common_tags = var.common_tags
    vpc_tags = var.vpc_tags
    
    #public subnet
    public_subnet_cidr = var.public_subnet_cidr
    private_subnet_cidr = var.private_subnet_cidr
    database_subnet_cidr = var.database_subnet_cidr
    
}