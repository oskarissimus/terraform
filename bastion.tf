module "bastion" {
  source = "./bastion"
  random=local.random
  bastion_name = local.bastion_name

  provider_address = module.networking.provider_address
  provider_subnetwork_name = module.networking.bastion_subnetwork_name

  depends_on = [module.networking]
}