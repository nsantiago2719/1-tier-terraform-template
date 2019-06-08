output "vpc-id" {
  value = "${aws_vpc.vpc.id}"
}

output "public-subnet-id" {
  value = "${aws_subnet.availability-1.id}"
}
