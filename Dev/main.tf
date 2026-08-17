module "dev_instance" {
  source = "./compute"
  iname = "Bhargav-instance"
  itype = "t3.micro"
  ami_id = "ami-0b6d9d3d33ba97d99"
}

module "dev_security" {
  source = "./security"
  sg_name = "terraform-dev-sg"
  ports = [22 , 80 , 3306 , 8080 , 8081 , 9000 , 9090]
}

module "dev_storage" {
  source = "./storage"
  bucket_name = "module.bhargav.45bucket"
}