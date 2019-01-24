# This file contains various variables that affect the configuration of the deployed infrastructure
#

variable "vpc_cidr" {
  description = "Primary CIDR block for VPC"
  default     = "172.20.0.0/16"
}

variable "flavour_centos" {
  description = "AWS instance type for servers etc"
  default     = "m4.xlarge"
}

variable "flavour_avi" {
  description = "AWS instance type for Avi controllers"
  default     = "c4.2xlarge"
}

variable "vol_size_centos" {
  description = "Volume size for instances in G"
  default     = "60"
}
variable "vol_size_avi" {
  description = "Volume size for Avi controllers in G"
  default     = "64"
}
