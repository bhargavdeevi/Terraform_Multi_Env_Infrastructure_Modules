module "prod_instance" {
  source = "./compute"
  iname = "prod-instance"
  itype = "c7i-flex.large"
  ami_id = "ami-0b6d9d3d33ba97d99"
}

module "prod_security" {
  source = "./security"
  sg_name = "terraform-prod-sg"
  ports = [22 , 80 , 3306 , 8080 , 8081 , 9000 , 9090]
}

module "prod_storage" {
  source = "./storage"
  bucket_name = "module.bhargav.56bucket"
}