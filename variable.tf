variable "provider_keys" {
    description = "values for the IAM user keys"
    type = list(string)
}

variable "vpc_cidr" {
    description = "The CIDR block for the VPC"
    type = string	
}

variable "prod_subnet_prefix" {
    description = "The CIDR block for the production subnet"
    type = string
}

variable "prod_subnet_tag" {
    description = "The tag for the production subnet"
    type = string
}

variable "prod_subnet_az" {
    description = "The availability zone for the production subnet"
    type = string
}