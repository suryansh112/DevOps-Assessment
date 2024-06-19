variable "region" {
  type = string
  sensitive = false

}

variable "access_key" {
  type = string
  sensitive = false
}

variable "secret_key" {

  type = string
  sensitive = false

}

variable "health_check_path" {
  default = "/api"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 3000
}

variable "az_count" {
  description = "Number of AZs to cover in a given region"
  default     = "2"
}


variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public Subnet CIDR values"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private Subnet CIDR values"
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}