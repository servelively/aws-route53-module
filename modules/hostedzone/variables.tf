variable "create_zone" {
  description = "Whether to create Route53 zone"
  type        = bool
  default     = true
}

variable "zones" {
  description = "Map of Route53 zone parameters"
  type        = any
  default     = {}
}

variable "zone_tags" {
  description = "Tags added to all zones. Will take precedence over tags from the 'zones' variable"
  type        = map(any)
  default     = {}
}