resource "aws_vpc" "debashis-vpc" {
cidr_block = "21.22.0.0/16"
instance_tenancy = "default"
tags = {
Name="debashis-vpc"
}
}

resource "aws_internet_gateway" "debashis-gateway" {
vpc_id = "${aws_vpc.pavan-vpc.id}"
tags = {
Name="debashis-gateway"
}
}


