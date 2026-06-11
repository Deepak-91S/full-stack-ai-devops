# Variables
variable "instance_type" {
  type = string
  description = "EC2 instance type"
  default = "t3.micro"
}

variable "instance_name" {
  type = string
  description = "EC2 instance name"
  default = "terraform-demo-ec2-instance"
}

variable "enable_monitoring" {
  type = bool
  description = "EC2 instance monitoring"
  default = false
}