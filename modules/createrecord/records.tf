resource "aws_route53_record" "cname_records" {
  count = length(var.route53_records)
  zone_id = var.zone_id
  name    = var.route53_records[count.index].name
  type    = var.route53_records[count.index].type
  ttl     = var.route53_records[count.index].ttl
  records = [var.route53_records[count.index].value]

  
  # dynamic "alias" {
  #   for_each =  { for route in var.route53_records[count.index].alias: 
  #   route.name => route
  #   }
  #   content {
  #     name                   =  each.route.name
  #     zone_id                = var.zone_id
  #     evaluate_target_health = each.route.value.evaluate_target_health
  #   }
  # }

  #  dynamic "latency_routing_policy" {
  #     for_each =  { for route in var.route53_records[count.index].latency_routing_policy: 
  #   route.name => route
  #   }

  #   content {
  #     region = each.route.region
  #   }
  # }

  # dynamic "weighted_routing_policy" {
  #      for_each =  { for route in var.route53_records[count.index].weighted_routing_policy: 
  #   route.name => route
  #   }

  #   content {
  #     weight = each.route.weight
  #   }
  }


variable "evaluate_target_health" {
  default = false
}
  resource "aws_route53_record" "create_a_records" {
  count = length(var.route53_a_records)  
  zone_id = var.zone_id
  name    = var.route53_a_records[count.index].name
  type    = var.route53_a_records[count.index].type

  alias {
    name                   = var.route53_a_records[count.index].alias_name
    zone_id                = var.route53_a_records[count.index].alias_domain_zone_id
    evaluate_target_health = var.route53_a_records[count.index].evaluate_target_health
  }
}