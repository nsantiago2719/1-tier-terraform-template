provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "~/.aws/credentials"
}

resource "aws_vpc" "vpc" {
  cidr_block       =  "${var.vpc-cidr-block}"

  tags = {
    Name           = "vpc-${var.project}"
    Environment    = "${var.environment}"
  }
}

resource "aws_subnet" "availability-1" {
  cidr_block              = "${var.subnet-1-cidr-block}"
  vpc_id                  = "${aws_vpc.vpc.id}"
  map_public_ip_on_launch = "true"
}

resource "aws_default_route_table" "default-route-public" {

  default_route_table_id = "${aws_vpc.vpc.default_route_table_id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.vpc.id}"

  tags = {
    Name           = "igw-${var.project}"
    Environment    = "${var.environment}"
  }
}
