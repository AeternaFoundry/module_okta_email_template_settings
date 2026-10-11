output "email_template_settings_id" {
  description = "Map of id values across all email_template_settings, keyed the same as var.email_template_settings except keys with no id are omitted"
  value       = { for k, v in okta_email_template_settings.email_template_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "email_template_settings_brand_id" {
  description = "Map of brand_id values across all email_template_settings, keyed the same as var.email_template_settings except keys with no brand_id are omitted"
  value       = { for k, v in okta_email_template_settings.email_template_settings : k => v.brand_id if v.brand_id != null && length(v.brand_id) > 0 }
}
output "email_template_settings_recipients" {
  description = "Map of recipients values across all email_template_settings, keyed the same as var.email_template_settings except keys with no recipients are omitted"
  value       = { for k, v in okta_email_template_settings.email_template_settings : k => v.recipients if v.recipients != null && length(v.recipients) > 0 }
}
output "email_template_settings_template_name" {
  description = "Map of template_name values across all email_template_settings, keyed the same as var.email_template_settings except keys with no template_name are omitted"
  value       = { for k, v in okta_email_template_settings.email_template_settings : k => v.template_name if v.template_name != null && length(v.template_name) > 0 }
}

