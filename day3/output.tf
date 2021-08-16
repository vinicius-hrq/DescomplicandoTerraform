output "eip_dns_name" {
  value = "${aws_eip.ip.public_dns}"
}