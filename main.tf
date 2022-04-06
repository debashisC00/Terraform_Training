resource "aws_vpc" "debashis-vpc" {
cidr_block = "21.21.1.0/16"
instance_tenancy = "default"
tags = {
Name="debashis-vpc"
}
}

