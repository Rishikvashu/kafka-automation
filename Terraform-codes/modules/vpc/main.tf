resource "aws_vpc" "a5_vpc" {
    cidr_block = var.vpc_cidr

    tags = {
        Name = var.vpc_name
    }
}