#---- networking/main.tf

#data resource queries aws resources
data "aws_availability_zones" "available" {}

resource "aws_vpc" "tf_vpc" {
	cidr_block = "${var.vpc_cidr}"
	enable_dns_hostnames 	= true
	enable_dns_support 		= true

	tags {
		Name = "tf_vpc"
	}
}

resource "aws_internet_gateway" "tf_internet_gateway"{
	vpc_id = "${aws_vpc.tf_vpc.id}"

	tags {
		Name = "tf-igw"
	}
}

resource "aws_route_table" "tf_public_rt" {
	vpc_id = "${aws_vpc.tf_vpc.id}"

	route {
		cidr_block = "0.0.0.0/0"
		gateway_id = "${aws_internet_gateway.tf_internet_gateway.id}"

		tags {
			Name = "tf_public"
		}
	}
}

resource "aws_default_route_table" "tf_private_rt" {
	aws_default_route_table_id = "${aws_vpc.tf_vpc.aws_default_route_table.id"

	tags {
		Name = "tf_private"
	}
}





