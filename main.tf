#Importing module from terrform registry
module "module-apachedemo" {
  source  = "vjmidde1252/module-apachedemo/aws"
  version = "1.0.0"
  # insert the 3 required variables here
  vpc_id        = var.vpc_id
  my_ip         = var.my_ip
  EC2-Key       = var.EC2-Key
  instance_type = var.instance_type
  server_name   = var.server_name

}

output "public_ip" {
  value = module.module-apachedemo.public_ip
}