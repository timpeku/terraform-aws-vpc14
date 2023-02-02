#Create a VPC

resource "aws_vpc" "example" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
    enable_dns_support = true
    enable_dns_hostname = true 
}

output info {
    value = aws_vpc.example
}