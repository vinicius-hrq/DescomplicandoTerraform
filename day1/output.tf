output "dns_name" {
  value = aws_instance.web.public_dns
}

output "dns_name_west" {
  value = aws_instance.web_west.public_dns
}