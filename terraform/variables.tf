variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "vpc_name" {
  description = "vpc name"
}

variable "subnet_names" {
  type = list(string)
}

variable "public_subnet_cidr_ranges" {
  type = list(string)
}

variable "private_subnet_cidr_ranges" {
  type = list(string)
}