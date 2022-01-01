resource "aws_instance" "ec2" {
  ami           = var.ec2_ami
  instance_type = var.instance_type
  key_name = var.key
  count = var.ec2_count
  subnet_id = element(var.subnets, count.index)
  security_groups = ["sg-0a705c01df817f267"]
  user_data     = "${file("application.sh")}"
  tags = {
    Name = "${var.environment}.${var.product}-${count.index+1}"
  }
}
