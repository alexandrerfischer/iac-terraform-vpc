# Global variables
# Tags variables
variable "tags" {
  type        = map(string)
  description = "Tags for common use"
}

# VPC Variables
variable "vpc" {
  type = object({
    name       = string
    cidr_block = string
  })
  description = "VPC Module Variables"
}