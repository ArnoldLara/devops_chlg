resource "aws_internet_gateway" "devops-prod-igw" {
    vpc_id = "${aws_vpc.devops-prod-vpc.id}"
    tags = {
        Name = "devops-prod-igw"
    }
}

resource "aws_route_table" "devops-prod-public-rt" {
    vpc_id = "${aws_vpc.devops-prod-vpc.id}"
    //Creando tabla de enrutamiento a internet usando IGW
    route {
        cidr_block = "0.0.0.0/0" 
        gateway_id = "${aws_internet_gateway.devops-prod-igw.id}" 
    }
    
    tags = {
        Name = "devops-prod-public-rt"
    }
}

resource "aws_route_table_association" "devops-prod-crta-public-subnet-1"{
    subnet_id = "${aws_subnet.devops-prod-app-public-1a-1.id}"
    route_table_id = "${aws_route_table.devops-prod-public-rt.id}"
}