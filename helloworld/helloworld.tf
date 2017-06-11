provider "aws" {
	region = "us-west-2"
	shared_credentials_file = "/home/steve/.aws/credentials"
	profile = "terraform"
}

resource "aws_instance" "example" {
	ami = "ami-4836a428"
	instance_type = "t2.micro"

	tags {
		Name = "terraform-example"
	}
}
