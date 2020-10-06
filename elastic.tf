module "elastic" {
  source = "./elastic"
  random=local.random
  elastic_name = local.elastic_name

  elastic_subnetwork_name = module.networking.elastic_subnetwork_name

  depends_on = [module.networking]
}