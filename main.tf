resource "aws_vpc" "debashis-vpc" {
        cidr_block = "21.22.0.0/16"
        instance_tenancy = "default"
        tags = {
        Name="debashis-vpc"
}
}

resource "aws_internet_gateway" "debashis-gateway" {
        vpc_id = "${aws_vpc.debashis-vpc.id}"
        tags = {
        Name="debashis-gateway"
}
}

resource "aws_route" "debashis-route" {
        destination_cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.debashis-gateway.id}"
        route_table_id = "${aws_vpc.debashis-vpc.main_route_table_id}"
}

