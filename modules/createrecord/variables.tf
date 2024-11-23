variable "create_records" {
  description = "Whether to create DNS records"
  type        = bool
  default     = true
}

variable "zone_id" {
  description = "ID of DNS zone"
  type        = string
  default     = null
}

variable "zone_name" {
  description = "Name of DNS zone"
  type        = string
  default     = null
}

variable "private_zone" {
  description = "Whether Route53 zone is private or public"
  type        = bool
  default     = false
}

variable "records" {
  description = "List of objects of DNS records"
  type        = any
  default     = []
}

# variable "records_jsonencoded" {
#   description = "List of map of DNS records (stored as jsonencoded string, for terragrunt)"
# }

variable "route53_records" {
  description = "List of CNAME records to create."
  type        = list(object({
    name  = string
    value = string
    ttl   = number
    type = string
  }))
  default = []
}

variable "route53_a_records" {
  type = any
  default = []
}