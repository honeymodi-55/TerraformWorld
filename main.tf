resource "aws_instance" "HeadInstance" {
  ami = "ami-0277fbe7afa8a33a6"
  instance_type = "t2.micro"
  key_name = "trail-key"
  tags = {
      Name = "Terraform-Instance"
      application = "HeadInstance"
  }
}

provider "aws" {
  region = var.region
  access_key = var.access
  secret_key = var.secret
}