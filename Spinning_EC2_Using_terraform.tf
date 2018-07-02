#Spinning_EC2_Using_terraform.tf
variable "AWS_ACCESS_KEY" {} #pick value from terraform.tfvars
variable "AWS_SECRET_KEY" {} #pick value from terraform.tfvars
provider "aws" {
        access_key = "${var.AWS_ACCESS_KEY}"
        secret_key = "${var.AWS_SECRET_KEY}"
        region = "us-east-1"
}

resource "aws_instance" "example" {
        ami = "ami-id"
        instance_type = "t1.micro"
        key_name = "Key_Pair"
        security_groups= ["security_Group"]
        tags {
         Name = "terraform-instance"
        }
}
