output "dns_name" {
  value = {
    for instance in aws_instance.web :
    instance.id => instance.public_dns
  }
}
