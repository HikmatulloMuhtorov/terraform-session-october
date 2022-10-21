variable "env" {
  type        = string
  description = "This is a variable for Environment"
  default     = "qa"
}

variable "ami" {
  type        = string
  description = "This is a variable for AMI"
  default     = "ami-026b57f3c383c2eec"

}

variable "instance_type" {
  type        = string
  description = "This is a variable for instance type"
  default     = "t2.micro"
}

variable "ingress_ports" {
  type        = list(string)
  description = "This is a list of ports for Ingress Rule"
  default     = ["22", "80", "443", "3306", "53","5432", "2049"]
}
variable "ingress_cidrs" {
  type        = list(string)
  description = "This is a list of Cidrs for Ingress Rule"
  default     = ["0.0.0.0/0", "10.0.0.0/16", "0.0.0.0/0", "192.168.1.0/24", "0.0.0.0/0","192.168.1.0/24", "0.0.0.0/8"]
}