# ************************
# vars.tf
# ************************
 
variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "us-east-1"
}
variable "AMIS" {
  type = "map"
  default = {
    # *******************************************
    # https://cloud-images.ubuntu.com/locator/ec2/
    #
    #   Frankfurt => us-east-1
    #   OS        => UBUNTU Xenial 16.04 LTS
    #   AMI_ID    => ami-0fcf65d66fe3e1f92
    #
    #   AMI shortcut (AMAZON MACHINE IMAGE)
    #
    # *******************************************
    us-east-1 = "ami-0fcf65d66fe3e1f92"
  }
}
 
# ************************
# provider.tf
# ************************
provider "aws" {
    access_key = "${var.AWS_ACCESS_KEY}"
    secret_key = "${var.AWS_SECRET_KEY}"
    region = "${var.AWS_REGION}"
}
 
 
# ************************
# instance.tf
# ************************
resource "aws_instance" "NSRA_DEMO" {
  ami = "${lookup(var.AMIS, var.AWS_REGION)}"
  tags = { Name = "NSRA_DEMO" }
  instance_type = "t2.micro"
  provisioner "local-exec" {
     command = "echo ${aws_instance.NSRA_DEMO.private_ip} >> private_ips.txt"
  }
}
output "ip" {
    value = "${aws_instance.NSRA_DEMO.public_ip}"
}

