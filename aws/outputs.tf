#---root/outputs.tf

#---storage/outputs

output "bucket name" {
	value = "${module.storage.bucketname}"
}

#---networking outputs

output "Public Subnets" {
	value = "${join(", ", module.networking.public_subnets)}"
}

output "Subnet IPs" {
	value = "${join(", ", module.networking.subnet_ips)}"
}

output "Public Security Group" {
	value = "${module.networking.public_sg}"
}

#---compute outputs

output "Public Instance IDs" {
	value ="${module.compute.server_id"
}

output "Public Instance IPs" {
	value = "${module.compute.server_ip}"
}