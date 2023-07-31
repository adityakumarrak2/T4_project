variable "ec2_name" {
  type = string
}

variable "ami_id" {
  description = "The EC2 ami id"
  type        = string
default = "ami-024e6efaf93d85776"
}

variable "i_t" {
  description = "The EC2 instance type"
  type        = string
default = "t2.micro"
}

variable "c" {
  description = "count for ec2 vm(s) to be launched"
  type        = string
default = "1"
}

variable "k" {
  description = "key file to be used"
  type        = string
default = "key2"
}

variable "sgid" {
  description = "security group id"
  type        = string
default = "["sg-0a954d1643b56f6fc"]"
}

variable "snid" {
  description = "subnet id"
  type        = string
default = "subnet-05edbbbdbe21f3fbe"
}

variable "tag" {
  description = "The EC2 instance type."
  type        = string
default = "T4_project007"
}

variable "vpcid" {
  description = "vpc id"
  type        = string
default = "vpc-0ce62b15e4831ef46"
}
