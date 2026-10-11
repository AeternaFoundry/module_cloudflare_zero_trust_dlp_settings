variable "zero_trust_dlp_settings" {
  description = <<EOT
Map of zero_trust_dlp_settings, attributes below
Required:
    - account_id
Optional:
    - ai_context_analysis
    - ocr
    - payload_logging
EOT

  type = map(object({
    account_id          = string
    ai_context_analysis = optional(bool)
    ocr                 = optional(bool)
    payload_logging = optional(object({
      masking_level = optional(string)
      public_key    = optional(string)
    }))
  }))
}

