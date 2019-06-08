output "instance-ip" {
  value = "${aws_instance.tier1.public_ip}"
}
