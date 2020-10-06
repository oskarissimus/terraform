locals {
  random=random_string.random_str.result
  bastion_name = "bastion-${local.random}"
  elastic_name = "elastic-${local.random}"
}