variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16" #users can override
  
}
variable "enable_dns_hostnames" {
    type = bool
    default = true
  
}

variable "enable_dns_support" {
    type = bool
    default = true
  
}

variable "common_tags" {
    type = map
    default = {
        Project = "Roboshop"
        Environment = "Dev"
        Terraform = true
    }  
}

variable "vpc_tags" {
    type = map 
    default = {}
  
}

variable "Project_name" {
    type = string
  
}

variable "Environment" {
    type = string

  
}

variable "igw_tags" {
    type = map 
    default = {}
  
}

variable "public_subnet_cidr" {
    type = list 
    validation {
      condition = length(var.public_subnet_cidr) == 2
      error_message = "Please give two valid subnet"
    }
  
}

variable "public_subnet_tags" {
    default = {}
  
}

variable "private_subnet_cidr" {
    type = list 
    validation {
      condition = length(var.private_subnet_cidr) == 2
      error_message = "Please give two valid subnet"
    }
  
}

variable "private_subnet_tags" {
    default = {}
  
}

variable "database_subnet_cidr" {
    type = list 
    validation {
      condition = length(var.database_subnet_cidr) == 2
      error_message = "give 2 subnets"
    }
  
}

variable "database_subnet_tags" {
    default = {}
  
}

variable "nat_tags" {
    type = map
    default = {}
  
}

variable "public_route_table_tags" {
    type = map 
    default = {}
  
}

variable "private_route_table_tags" {
    type = map 
    default = {}
  
}

variable "database_route_table_tags" {
    type = map 
    default = {}
  
}

variable "is_peering_required" {
    type = bool 
    default = false
  
}

variable "acceptor_vpc_id" {
    type = string 
    default = ""
  
}

variable "vpc_peering_tags" {
    default = {}
  
}