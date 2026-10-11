resource "okta_email_template_settings" "email_template_settings" {
  for_each = var.email_template_settings

  brand_id      = each.value.brand_id
  template_name = each.value.template_name
  recipients    = each.value.recipients
}

