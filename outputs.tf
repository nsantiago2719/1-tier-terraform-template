output "instance-public-ip" {
  value = "${module.ec2.instance-ip}"
}
