module "elastic" {
  source = "./elastic"
  random=local.random
  elastic_name = local.elastic_name

  elastic_subnetwork_name = module.networking.elastic_subnetwork_name
  nat_ip = module.networking.elastic_nat_ip

  depends_on = [module.networking]
}