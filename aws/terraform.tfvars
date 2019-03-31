aws_region 		= "us-west-1"
project_name 	= "tf-jenkins-ansible"
vpc_cidr		= "10.123.0.0/16"
public_cidrs	= [
	"10.123.1.0/24",
	"10.123.2.0/24"
	]
accessip		= "0.0.0.0/0"
key_name 		= "tf_key" 
public_key_path = "/var/lib/jenkins/.ssh/id_rsa.pub"
#public_key_path = "/root/.ssh/id_rsa.pub"
server_instance_type = "t2.micro"
instance_count 	= 2
relative_state_path = "./terraform.tfstate"
prd_vpc_cidr		= "20.123.0.0/16"
public_prd_cidrs	= [
	"20.123.1.0/24",
	"20.123.2.0/24"
	]
prd_accessip		= "0.0.0.0/0"
