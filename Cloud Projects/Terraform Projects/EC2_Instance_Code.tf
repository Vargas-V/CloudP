provider "aws" {
    access_key = "AKIAQLRL6UB6EHHXYU43"
    secret_key = "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"
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
