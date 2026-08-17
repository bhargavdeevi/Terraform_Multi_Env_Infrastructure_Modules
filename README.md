# Terraform_Multi_Env_Infrastructure_Modules
Instead of keeping everything in one large Terraform configuration, I structured the infrastructure into reusable modules:  🔹 Compute Module → EC2 instances 🔹 Security Module → Security Groups 🔹 Storage Module → S3 buckets  Each environment has its own configuration while reusing the same underlying modules.
