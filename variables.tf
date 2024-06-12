variable "region" {
  description = "Region reference"
  default = "eu-central-1"
}

variable "vpc_full_cidr_block" {
    description = "VPC Full CIDR Block"
    default = "192.168.0.0/16"
}

variable "zonea_public_subnet_cidr_block" {
    description = "Primary Zone A public subnet"
    default = "192.168.1.0/24"
}

variable "zonea_private_subnet_cidr_block" {
    description = "Primary Zone A private subnet"
    default = "192.168.2.0/24"
}

variable "zoneb_public_subnet_cidr_block" {
    description = "secondary Zone B public subnet"
    default = "192.168.3.0/24"
}

variable "zoneb_private_subnet_cidr_block" {
    description = "secondary Zone B private subnet"
    default = "192.168.4.0/24"
}

variable "ami_map" {
    description = "Mapping of AMIs"
    type = map(string)
    default = {
        "dev"  = "ami-00cf59bc9978eb266"
        "prod" = "ami-01e444924a2233b07"
    }
}

variable "env" {
  description = "The environment to deploy (e.g., dev, prod)"
  type        = string
  default     = "dev"
}

# variable "ami" {
#     description = "Image for ASG"
#     default = "ami-01e444924a2233b07"
# }

variable "instance_type" {
    description = "Instance type for asg"
    default = "t2.micro"
}

variable "key_name" {
    description = "Key for Instances in ASG"
    default = "kp"
}