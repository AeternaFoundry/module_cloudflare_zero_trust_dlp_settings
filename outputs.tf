output "zero_trust_dlp_settings_id" {
  description = "Map of id values across all zero_trust_dlp_settings, keyed the same as var.zero_trust_dlp_settings except keys with no id are omitted"
  value       = { for k, v in cloudflare_zero_trust_dlp_settings.zero_trust_dlp_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "zero_trust_dlp_settings_account_id" {
  description = "Map of account_id values across all zero_trust_dlp_settings, keyed the same as var.zero_trust_dlp_settings except keys with no account_id are omitted"
  value       = { for k, v in cloudflare_zero_trust_dlp_settings.zero_trust_dlp_settings : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "zero_trust_dlp_settings_ai_context_analysis" {
  description = "Map of ai_context_analysis values across all zero_trust_dlp_settings, keyed the same as var.zero_trust_dlp_settings except keys with no ai_context_analysis are omitted"
  value       = { for k, v in cloudflare_zero_trust_dlp_settings.zero_trust_dlp_settings : k => v.ai_context_analysis if v.ai_context_analysis != null }
}
output "zero_trust_dlp_settings_ocr" {
  description = "Map of ocr values across all zero_trust_dlp_settings, keyed the same as var.zero_trust_dlp_settings except keys with no ocr are omitted"
  value       = { for k, v in cloudflare_zero_trust_dlp_settings.zero_trust_dlp_settings : k => v.ocr if v.ocr != null }
}
output "zero_trust_dlp_settings_payload_logging" {
  description = "Map of payload_logging values across all zero_trust_dlp_settings, keyed the same as var.zero_trust_dlp_settings except keys with no payload_logging are omitted"
  value       = { for k, v in cloudflare_zero_trust_dlp_settings.zero_trust_dlp_settings : k => v.payload_logging if v.payload_logging != null && length(v.payload_logging) > 0 }
}

