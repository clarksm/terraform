provider "aws" {
	region = "${var.aws_region}"
}

#deploy storage resources
module "storage" {
	source = "./storage"
	project_name = "${var.project_name}"
}