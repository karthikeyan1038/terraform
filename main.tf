resource "aws_vpc" "vpc" {
	cidr_block = "${var.vpc}"
	enable_dns_support = true
	enable_dns_hostnames = true
	tags = {
		Name = "myVPC"
	}
}

resource "aws_subnet" "public_subnet" {
	vpc_id = "${aws_vpc.vpc.id}"
	cidr_block = "${var.public}"
	map_public_ip_on_launch = true
	availability_zone = "${var.public_availability_zone}"
	tags = {
		Name = "myPublicSubnet"
	}
}


resource "aws_subnet" "private_subnet" {
	vpc_id = "${aws_vpc.vpc.id}"
	cidr_block = "${var.private}"
	availability_zone = "${var.private_availability_zone}"
	tags = {
		Name = "myPrivateSubnet"
	}
}




