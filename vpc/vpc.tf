resource "aws_vpc" "prod_vpc" {
    cidr_block = var.vpc_cidr

    tags = {
        Name = "rem-backend-vpc"
    }
}

resource "aws_subnet" "prod_subnet" {
    vpc_id = aws_vpc.prod_vpc.id
    cidr_block = var.prod_subnet_prefix
    # availability_zone = "us-east-1a"
    availability_zone = var.prod_subnet_az

    tags = {
        Name = "${var.prod_subnet_tag} - ${aws_vpc.prod_vpc.id} - ${var.prod_subnet_az}"
    }
}   


