variable "region" {
	default = "ap-south-1"
}

variable "vpc" {
	default = "23.1.0.0/16"
	description = "The VPC"
}

variable "public" {
	default = "23.1.1.0/24"
	description = "The public subnet"
}

variable "private" {
	default = "23.1.2.0/24"
	description = "The private subnet"
}

variable "public_availability_zone" {
	default = "ap-south-1a"
	description = "The public availability zone"
}

variable "private_availability_zone" {
	default = "ap-south-1b"
	description = "The private availability zone"
}

variable "ami" {
	default = "ami-0ad42f4f66f6c1cc9"
	description = "AMI"
}

variable "instance_type" {
	default = "t2.micro"
	description = "Instance Type"
}

variable "key_name" {
	default = "mike_linux"
	description = "Key Pair Name"
}
