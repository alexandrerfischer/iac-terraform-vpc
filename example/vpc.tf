module "vpc" {
  source = "../modules"

  vpc = merge(var.vpc,
    { tags = var.tags }
  )
}