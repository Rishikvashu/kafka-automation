resource "aws_vpc" "kafka_vpc" {

  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {

    Name        = var.vpc_name
    Project     = "Kafka-Automation"
    ManagedBy   = "Terraform"
    Environment = "Dev"

  }
}
