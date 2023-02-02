#Create a VPC

resource "aws_vpc" "example" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
    enable_dns_support = true
    enable_dns_hostnames = true 
}

resource "aws_subnet" "public_subnet1" {
    depends_on = [
        aws_vpc.example
    ]
  
  vpc_id     = aws_vpc.example.id
  cidr_block = "10.0.1.0/24"
}