provider "aws" {
    access_key = ""
    secret_key = ""
    region = "ap-south-1"

}


resource "aws_instance" "Terraform_Demo" {
    ami = "ami-0d13e3e640877b0b9"
    instance_type = "t2.micro"
    key_name = "AWSLinuxDemo"
    tags = {
        Name = "Terraform Demo"
    }
}
