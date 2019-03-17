provider "aws" {
	region = "${var.aws_region}"
}

terraform {
	backend "s3" {
		bucket 	= "la-terraform-course-state"
		key 	= "terraform/terraform.tfstate"
		region 	= "us-west-1"
	}
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
	public_cidrs = "${var.public_cidrs}"
	accessip = "${var.accessip}"
}

#Deploy compute resources

module "compute" {
	source = "./compute"
	instance_count = "${var.instance_count}"
	key_name = "${var.key_name}"
	public_key_path = "${var.public_key_path}"
	instance_type = "${var.server_instance_type}"
	subnets = "${module.networking.public_subnets}"
	security_group = "${module.networking.public_sg}"
	subnet_ips = "${module.networking.subnet_ips}"

	#name on the left should match the variable name in source dir and right should match root variable 
}