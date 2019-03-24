# This file contains various variables that affect the class itself
#

# The following variables should be defined via a seperate mechanism to avoid distribution
# For example the file terraform.tfvars

variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}
variable "pkey" {}
variable "avi_default_password" {}
variable "avi_admin_password" {}
variable "avi_backup_admin_username" {}
variable "avi_backup_admin_password" {}
variable "ocp_oreg_auth_user" {}
variable "ocp_oreg_auth_password" {}
variable "ocp_rhsm_pool_id" {}

variable "student_count" {
  description = "The class size. Each student gets a controller"
  default     = 2
}

variable "lab_timezone" {
  description = "Lab Timezone: PST, EST, GMT or SGT"
}

variable "server_count" {
  description = "The class size. Students get a shared servers"
  default     = 3
}

variable "master_count" {
  description = "The class size. Students get a shared servers"
  default     = 1
}

variable "id" {
  description = "A prefix for the naming of the objects / instances"
  default     = "aviOCP"
}

variable "owner" {
  description = "Sets the AWS Owner tag appropriately"
  default     = "aviOCP_Training"
}

variable "aws_az" {
  type        = "map"
  description = "Control of placement of objects within the AWS Availability Zone"

  default = {
    us-west-2 = "us-west-2a"
    eu-west-1 = "eu-west-1a"
  }
}

variable "key" {
  description = "AWS SSH keypair name"
  default     = "training-access"
}

variable "ocp_rhsm_org" {
  description = "RedHat Subscription Manager Org"
  default = "avi_ocp"
}

variable "ocp_rhsm_activationkey" {
  description = "RedHat Subscription Manager OCP activation key"
  default = "avi_ocpkey"
}

