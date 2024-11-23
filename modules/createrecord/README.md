## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_route53_record.cname_records](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.create_a_records](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_records"></a> [create\_records](#input\_create\_records) | Whether to create DNS records | `bool` | `true` | no |
| <a name="input_evaluate_target_health"></a> [evaluate\_target\_health](#input\_evaluate\_target\_health) | n/a | `bool` | `false` | no |
| <a name="input_private_zone"></a> [private\_zone](#input\_private\_zone) | Whether Route53 zone is private or public | `bool` | `false` | no |
| <a name="input_records"></a> [records](#input\_records) | List of objects of DNS records | `any` | `[]` | no |
| <a name="input_route53_a_records"></a> [route53\_a\_records](#input\_route53\_a\_records) | n/a | `any` | `[]` | no |
| <a name="input_route53_records"></a> [route53\_records](#input\_route53\_records) | List of CNAME records to create. | <pre>list(object({<br/>    name  = string<br/>    value = string<br/>    ttl   = number<br/>    type = string<br/>  }))</pre> | `[]` | no |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | ID of DNS zone | `string` | `null` | no |
| <a name="input_zone_name"></a> [zone\_name](#input\_zone\_name) | Name of DNS zone | `string` | `null` | no |

## Outputs

No outputs.
