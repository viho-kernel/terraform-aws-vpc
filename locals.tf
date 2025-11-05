locals {
  Name =  "${var.Project_name}-${var.Environment}"
  az_names = slice(data.aws_availability_zones.azs.names,0,2)
}