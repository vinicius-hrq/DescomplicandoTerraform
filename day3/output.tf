output "eip_dns_name" {
  value = "${aws_eip.ip.public_dns}"
}

output "ip_address" {
  value = "${aws_instance.web2.public_ip}"
}