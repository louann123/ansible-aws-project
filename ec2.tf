provider "aws" {
    region = "us-east-1"
      
    }
  
resource "aws_instance" "ec2-server" {
    ami = "ami-026b57f3c383c2eec"
    instance_type = "t2.micro"
    key_name = "ansible"

    tags = {
      "Name" = "Linux"
      "Environment" = "dev"
    }
}
    resource "aws_instance" "ec2-server1" {
    ami = "ami-08c40ec9ead489470"
    instance_type = "t2.micro"
    key_name = "ansible"
    
    tags = {
      "Name" = "Ubuntu"
      "Environment" = "qa"
    }
    }
  

