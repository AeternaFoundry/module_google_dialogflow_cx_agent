variable "dialogflow_cx_agents" {
  description = <<EOT
Map of dialogflow_cx_agents, attributes below
Required:
    - default_language_code
    - display_name
    - location
    - time_zone
Optional:
    - avatar_uri
    - delete_chat_engine_on_destroy
    - deletion_policy
    - description
    - enable_multi_language_training
    - enable_spell_correction
    - enable_stackdriver_logging
    - locked
    - project
    - security_settings
    - start_playbook
    - supported_language_codes
    - advanced_settings (block):
        - audio_export_gcs_destination (optional, block):
            - uri (optional)
        - dtmf_settings (optional, block):
            - enabled (optional)
            - finish_digit (optional)
            - max_digits (optional)
        - logging_settings (optional, block):
            - enable_consent_based_redaction (optional)
            - enable_interaction_logging (optional)
            - enable_stackdriver_logging (optional)
        - speech_settings (optional, block):
            - endpointer_sensitivity (optional)
            - models (optional)
            - no_speech_timeout (optional)
            - use_timeout_based_endpointing (optional)
    - answer_feedback_settings (block):
        - enable_answer_feedback (optional)
    - client_certificate_settings (block):
        - passphrase (optional)
        - private_key (required)
        - ssl_certificate (required)
    - gen_app_builder_settings (block):
        - engine (required)
    - git_integration_settings (block):
        - github_settings (optional, block):
            - access_token (optional)
            - branches (optional)
            - display_name (optional)
            - repository_uri (optional)
            - tracking_branch (optional)
    - personalization_settings (block):
        - default_end_user_metadata (optional)
    - speech_to_text_settings (block):
        - enable_speech_adaptation (optional)
    - text_to_speech_settings (block):
        - synthesize_speech_configs (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    default_language_code          = string
    display_name                   = string
    location                       = string
    time_zone                      = string
    avatar_uri                     = optional(string)
    delete_chat_engine_on_destroy  = optional(bool)
    deletion_policy                = optional(string)
    description                    = optional(string)
    enable_multi_language_training = optional(bool)
    enable_spell_correction        = optional(bool)
    enable_stackdriver_logging     = optional(bool)
    locked                         = optional(bool)
    project                        = optional(string)
    security_settings              = optional(string)
    start_playbook                 = optional(string)
    supported_language_codes       = optional(list(string))
    advanced_settings = optional(object({
      audio_export_gcs_destination = optional(object({
        uri = optional(string)
      }))
      dtmf_settings = optional(object({
        enabled      = optional(bool)
        finish_digit = optional(string)
        max_digits   = optional(number)
      }))
      logging_settings = optional(object({
        enable_consent_based_redaction = optional(bool)
        enable_interaction_logging     = optional(bool)
        enable_stackdriver_logging     = optional(bool)
      }))
      speech_settings = optional(object({
        endpointer_sensitivity        = optional(number)
        models                        = optional(map(string))
        no_speech_timeout             = optional(string)
        use_timeout_based_endpointing = optional(bool)
      }))
    }))
    answer_feedback_settings = optional(object({
      enable_answer_feedback = optional(bool)
    }))
    client_certificate_settings = optional(object({
      passphrase      = optional(string)
      private_key     = string
      ssl_certificate = string
    }))
    gen_app_builder_settings = optional(object({
      engine = string
    }))
    git_integration_settings = optional(object({
      github_settings = optional(object({
        access_token    = optional(string)
        branches        = optional(list(string))
        display_name    = optional(string)
        repository_uri  = optional(string)
        tracking_branch = optional(string)
      }))
    }))
    personalization_settings = optional(object({
      default_end_user_metadata = optional(string)
    }))
    speech_to_text_settings = optional(object({
      enable_speech_adaptation = optional(bool)
    }))
    text_to_speech_settings = optional(object({
      synthesize_speech_configs = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_agents : (
        v.description == null || (length(v.description) >= 0 && length(v.description) <= 500)
      )
    ])
    error_message = "must be between 0 and 500 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_agents : (
        v.personalization_settings == null || (v.personalization_settings.default_end_user_metadata == null || (can(jsondecode(v.personalization_settings.default_end_user_metadata))))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_agents : (
        v.text_to_speech_settings == null || (v.text_to_speech_settings.synthesize_speech_configs == null || (can(jsondecode(v.text_to_speech_settings.synthesize_speech_configs))))
      )
    ])
    error_message = "must be valid JSON"
  }
}

