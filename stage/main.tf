module "stage_instance" {
  source = "./compute"
  iname = "stage-instance"
  itype = "t3.micro"
  ami_id = "ami-0b6d9d3d33ba97d99"
}

module "stage_security" {
  source = "./security"
  sg_name = "terraform-stage-sg"
  ports = [22 , 80 , 3306 , 8080 , 8081 , 9000 , 9090]
}

module "stage_storage" {
  source = "./storage"
  bucket_name = "module.bhargav.65bucket"
}