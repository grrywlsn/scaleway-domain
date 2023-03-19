
############################
#### Scaleway variables ####

variable "project_id" {
  description = "Scaleway project ID"
  type        = string
}

variable "region" {
  description = "Scaleway region ID"
  type        = string
}

variable "zone" {
  description = "Scaleway zone ID"
  type        = string
}

############################
##### Module variables #####

variable "dns_records_a" {
  description = "Map of A records for the domain"
  type        = map(any)
  default     = {}
}

variable "dns_records_cname" {
  description = "Map of CNAME records for the domain. (Trailing dot required)"
  type        = map(any)
  default     = {}
}

variable "dns_records_txt" {
  description = "List of TXT records for the domain"
  type        = map(any)
  default     = {}
}

variable "domain_name" {
  description = "Name for the container"
  type        = string
}