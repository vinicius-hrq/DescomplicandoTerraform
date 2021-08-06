module "servers" {
  source = "./servers"
  servers = 1
}

output "dns_name" {
  value = module.servers.dns_name
}