### AWS VPC Module

This module creates following resoruces. We are using HA, we are getting first 2 AZ automaticcally.
* VPC
* Internet Gateway with VPC Assocation
* 2 public subnets in 1a and 1b
* 2 private subnets in 1a and 1 b
* ELASTIC IP
* Nat gateway in 1a public subnet
* Public Route Table
* Private Route table
* Database route table
* Subnets are route table assocations
* VPC Peering if user requests
* Adding the perring route in default vpc, if user don't provider acceptor vpc explicity.
* Adding the peering routes in public. private and database route tables.

### Inputs
* Project_name (Required) - Your project name
* environment (Required) - which environment you are working in
* vpc_cidr (Optional) - Default value is 10.0.0.0/16, user can override
* enable_dns_hostnames (optional) - Defaulty value is true
* common_tags (optional) - Better to provide
* vpc_tags (optional) - Default value is empty. Type is map
* igw_tags (optional) - Default value is empty. Type is map
* public_subnets_cidr (required) --- user must provider 2 valid public subnets CIDR (Optional)
*  private_subnets_cidr (required) --- user must provider 2 valid public subnets CIDR (optional)
*  database_subnets_cidr (required) --- user must provider 2 valid public subnets CIDR (optional)
* nat_gateway_tags (Optional) - Default value is empty. Type is map
* public_route_table_tags (optional) - Default value is empty. Type is map
* database_route_table_tags (optional) - Default value is empty. Type is map
* is_peering_required (Optional) - default value is false
* acceptor_vpc_id (optional) - default value is default VPC ID
* vpc_peering_tags (optional) - Default value is empty. Type is map

### Outputs
* vpc_id - VPC ID Created
* public_Subnet_ids - 2 public subnet ID created
* private_Subnet_ids - 2 private subnet ID created
* database_Subnet_ids - 2 database subnet ID created