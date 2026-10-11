variable "email_template_settings" {
  description = <<EOT
Map of email_template_settings, attributes below
Required:
    - brand_id
    - template_name
Optional:
    - recipients
EOT

  type = map(object({
    brand_id      = string
    template_name = string
    recipients    = optional(string)
  }))
}

