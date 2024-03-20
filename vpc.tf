resource "aws_vpc" "devops-prod-vpc" {
    cidr_block = "200.20.0.0/16"
    enable_dns_support = "true"
    enable_dns_hostnames = "true"
    instance_tenancy = "default"

    tags = {
        Name = "devops-prod-vpc"
    }
}

resource "aws_subnet" "devops-prod-app-public-1a-1" {
    vpc_id = "${aws_vpc.devops-prod-vpc.id}"
    cidr_block = "200.20.10.0/24"
    map_public_ip_on_launch = "true" 
    availability_zone = "us-east-1a"

    tags = {
        Name = "devops-prod-app-public-1a-1"
    }
}

resource "aws_subnet" "devops-prod-app-public-1a-2" {
    vpc_id = "${aws_vpc.devops-prod-vpc.id}"
    cidr_block = "200.20.11.0/24"
    map_public_ip_on_launch = "false" 
    availability_zone = "us-east-1a"

    tags = {
        Name = "devops-prod-app-public-1a-2"
    }
}

resource "aws_subnet" "devops-prod-app-public-1a-3" {
    vpc_id = "${aws_vpc.devops-prod-vpc.id}"
    cidr_block = "200.20.12.0/24"
    map_public_ip_on_launch = "false" 
    availability_zone = "us-east-1a"

    tags = {
        Name = "devops-prod-app-public-1a-3"
    }
}

resource "aws_subnet" "devops-prod-app-private-1a-1" {
    vpc_id = "${aws_vpc.devops-prod-vpc.id}"
    cidr_block = "200.20.20.0/24"
    map_public_ip_on_launch = "false"
    availability_zone = "us-east-1b"

    tags = {
        Name = "devops-prod-app-private-1a-1"
    }
}

resource "aws_subnet" "devops-prod-app-private-1b-2" {
    vpc_id = "${aws_vpc.devops-prod-vpc.id}"
    cidr_block = "200.20.21.0/24"
    map_public_ip_on_launch = "false" 
    availability_zone = "us-east-1c"

    tags = {
        Name = "devops-prod-app-private-1b-2"
    }
}

resource "aws_subnet" "devops-prod-app-private-1c-2" {
    vpc_id = "${aws_vpc.devops-prod-vpc.id}"
    cidr_block = "200.20.22.0/24"
    map_public_ip_on_launch = "false" 
    availability_zone = "us-east-1c"

    tags = {
        Name = "devops-prod-app-private-1c-2"
    }
}