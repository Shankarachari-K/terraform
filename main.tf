# Specify the AWS details
provider "aws" {
  region = "ap-south-1"
}

# Specify the EC2 details
resource "aws_instance" "example" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"
}

# Create eip 
resource "aws_eip" "ip" {
  instance = aws_instance.example.id

}
