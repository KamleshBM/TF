resource "aws_instance" "instance_name" {
  ami           = var.ami
  instance_type = var.type
  tags = {
    Name = var.instance_name
  }
}
#module "ec2-instance" {
#  source  = "terraform-aws-modules/ec2-instance/aws"
#  version = "5.6.0"
#}
