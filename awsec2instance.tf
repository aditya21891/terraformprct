provider "aws" {
        access_key = "AKIAJ55TMUWHR63NTZIA"
        secret_key = "uLYYxINI9GwCMYFtV04hRzbt1J+mcfUyLtNl3MDz"
        region = "us-west-1"
}

resource "aws_instance" "example" {
        ami = "ami-824c4ee2"
        instance_type = "t2.micro"
        key_name = "ansivijay"
        security_groups= ["awsinstancedemo"]
        tags {
         Name = "terraform-instance"
        }
}

resource "aws_s3_bucket" "c" {
	bucket = "terraform-bucket-awss3"
	acl    = "public"

  tags {
    Name         = "Terraform bucket"
    Environment  = "Dev-env"
  }

  versioning {
    enabled = true
  }

}
   	
