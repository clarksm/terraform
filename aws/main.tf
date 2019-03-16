provider "aws" {
	region = "${var.aws_region}"
}

#deploy storage resources
module "storage" {
	source = "./storage"
	project_name = "${var.project_name}"
}

#deploy networking resources
module "networking" {
	source = "./networking"
	vpc_cidr = "${var.vpc_cidr}"
	public_cides = "${var.public_cidrs"
	accessip = "${var.accessip}"
}