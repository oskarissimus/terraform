output "bastion_nat_ip" {
  value = module.networking.bastion_nat_ip
}

output "elastic_nat_ip" {
  value = module.networking.elastic_nat_ip
}