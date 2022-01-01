variable "region" {
  default = "ap-south-1"
}

#variable "profile" {
#  default = "MyAWS"
#}

variable "ec2_ami" {
  default = "ami-052cef05d01020f1d"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key" {
  default = "demo"
}

variable "ec2_count" {
  type = number
  default = "2"
}

variable "environment" {
  default = "dev"
}

variable "product" {
  default = "cloud"
}
variable "vpc_id" {
  default = "vpc-0da2a378fe34b628b"
}
variable "subnets" {
   default = ["subnet-0d1f6ad78804282e5","subnet-0bf5ea7b14ce52a60","subnet-0a75fd25f1cf18ab2"]
}
variable "vpc_security_group_id" {
  default = "sg-0a705c01df817f267"
}
















#variable "vpc_security_group_id" {
#  type = map
#  default = {
#    vpc_id     = ["sg-0a705c01df817f267"]
#    cidr_block = ["10.0.1.0/24"]  												
#  }
#}

#variable "subnet_cidr" {
#  type = "list"
  #default = ["10.0.1.0/24","10.0.3.0/24","10.0.6.0/24"]
#  default = ["subnet-0d1f6ad78804282e5","subnet-0bf5ea7b14ce52a60","subnet-0a75fd25f1cf18ab2"]
#}
