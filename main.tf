resource "cloudflare_zero_trust_dlp_settings" "zero_trust_dlp_settings" {
  for_each = var.zero_trust_dlp_settings

  account_id          = each.value.account_id
  ai_context_analysis = each.value.ai_context_analysis
  ocr                 = each.value.ocr
  payload_logging     = each.value.payload_logging
}

