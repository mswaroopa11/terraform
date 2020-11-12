provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAVOWKMV5LI7LJLYF3"
  secret_key = "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"
}

resource "aws_vpc" "first-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "production"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.first-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "prod-subnet"
  }
}

/* resource "aws_instance" "myec2instance" {
  ami           = "ami-0885b1f6bd170450c"
  instance_type = "t2.micro"
  tags = {
    Name = "ubuntu"
  }
} */


/* resource "<provider>_<resource_type>" "name" {
    config options.....
    key = "value"
    key2 = "another value"

} */
