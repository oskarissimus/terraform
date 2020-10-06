module "networking" {
  source = "./networking"
  random = local.random
  bastion_name = local.bastion_name
  elastic_name = local.elastic_name
}