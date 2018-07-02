#Spinning_EC2_Using_terraform
variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
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
