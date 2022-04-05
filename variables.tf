# Declare intrinsic variables.
data "aws_region" "current" {}
locals {
  region = data.aws_region.current.name
}

variable "api_name" {
  type        = string
  description = "The name of the REST API."
  #  sensitive   = true
  #  validation {
  #    condition     = length(var.ami) > 4 && substr(var.ami, 0, 4) == "ami-"
  #    error_message = "Please provide a valid value for variable AMI."
  #  }
}

variable "api_description" {
  type        = string
  description = "A description for the REST API."
}

variable "stage_name" {
  type        = string
  description = "The name of the API stage to deploy to."
}

variable "use_waf" {
  type        = bool
  default     = true
  description = "Whether to use a Web Application Firewall in front of the API."
}
