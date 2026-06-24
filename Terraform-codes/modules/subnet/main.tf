resource "aws_subnet" "kafka_subnet" {

  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_cidr
  availability_zone = var.az

  map_public_ip_on_launch = true

  tags = {

    Name        = var.subnet_name
    Project     = "Kafka-Automation"
    Environment = "Dev"
    ManagedBy   = "Terraform"

  }
}
