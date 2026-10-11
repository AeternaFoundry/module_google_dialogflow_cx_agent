resource "google_dialogflow_cx_agent" "dialogflow_cx_agents" {
  for_each = var.dialogflow_cx_agents

  default_language_code          = each.value.default_language_code
  display_name                   = each.value.display_name
  location                       = each.value.location
  time_zone                      = each.value.time_zone
  avatar_uri                     = each.value.avatar_uri
  delete_chat_engine_on_destroy  = each.value.delete_chat_engine_on_destroy
  deletion_policy                = each.value.deletion_policy
  description                    = each.value.description
  enable_multi_language_training = each.value.enable_multi_language_training
  enable_spell_correction        = each.value.enable_spell_correction
  enable_stackdriver_logging     = each.value.enable_stackdriver_logging
  locked                         = each.value.locked
  project                        = each.value.project
  security_settings              = each.value.security_settings
  start_playbook                 = each.value.start_playbook
  supported_language_codes       = each.value.supported_language_codes

  dynamic "advanced_settings" {
    for_each = each.value.advanced_settings != null ? [each.value.advanced_settings] : []
    content {
      dynamic "audio_export_gcs_destination" {
        for_each = advanced_settings.value.audio_export_gcs_destination != null ? [advanced_settings.value.audio_export_gcs_destination] : []
        content {
          uri = audio_export_gcs_destination.value.uri
        }
      }
      dynamic "dtmf_settings" {
        for_each = advanced_settings.value.dtmf_settings != null ? [advanced_settings.value.dtmf_settings] : []
        content {
          enabled      = dtmf_settings.value.enabled
          finish_digit = dtmf_settings.value.finish_digit
          max_digits   = dtmf_settings.value.max_digits
        }
      }
      dynamic "logging_settings" {
        for_each = advanced_settings.value.logging_settings != null ? [advanced_settings.value.logging_settings] : []
        content {
          enable_consent_based_redaction = logging_settings.value.enable_consent_based_redaction
          enable_interaction_logging     = logging_settings.value.enable_interaction_logging
          enable_stackdriver_logging     = logging_settings.value.enable_stackdriver_logging
        }
      }
      dynamic "speech_settings" {
        for_each = advanced_settings.value.speech_settings != null ? [advanced_settings.value.speech_settings] : []
        content {
          endpointer_sensitivity        = speech_settings.value.endpointer_sensitivity
          models                        = speech_settings.value.models
          no_speech_timeout             = speech_settings.value.no_speech_timeout
          use_timeout_based_endpointing = speech_settings.value.use_timeout_based_endpointing
        }
      }
    }
  }

  dynamic "answer_feedback_settings" {
    for_each = each.value.answer_feedback_settings != null ? [each.value.answer_feedback_settings] : []
    content {
      enable_answer_feedback = answer_feedback_settings.value.enable_answer_feedback
    }
  }

  dynamic "client_certificate_settings" {
    for_each = each.value.client_certificate_settings != null ? [each.value.client_certificate_settings] : []
    content {
      passphrase      = client_certificate_settings.value.passphrase
      private_key     = client_certificate_settings.value.private_key
      ssl_certificate = client_certificate_settings.value.ssl_certificate
    }
  }

  dynamic "gen_app_builder_settings" {
    for_each = each.value.gen_app_builder_settings != null ? [each.value.gen_app_builder_settings] : []
    content {
      engine = gen_app_builder_settings.value.engine
    }
  }

  dynamic "git_integration_settings" {
    for_each = each.value.git_integration_settings != null ? [each.value.git_integration_settings] : []
    content {
      dynamic "github_settings" {
        for_each = git_integration_settings.value.github_settings != null ? [git_integration_settings.value.github_settings] : []
        content {
          access_token    = github_settings.value.access_token
          branches        = github_settings.value.branches
          display_name    = github_settings.value.display_name
          repository_uri  = github_settings.value.repository_uri
          tracking_branch = github_settings.value.tracking_branch
        }
      }
    }
  }

  dynamic "personalization_settings" {
    for_each = each.value.personalization_settings != null ? [each.value.personalization_settings] : []
    content {
      default_end_user_metadata = personalization_settings.value.default_end_user_metadata
    }
  }

  dynamic "speech_to_text_settings" {
    for_each = each.value.speech_to_text_settings != null ? [each.value.speech_to_text_settings] : []
    content {
      enable_speech_adaptation = speech_to_text_settings.value.enable_speech_adaptation
    }
  }

  dynamic "text_to_speech_settings" {
    for_each = each.value.text_to_speech_settings != null ? [each.value.text_to_speech_settings] : []
    content {
      synthesize_speech_configs = text_to_speech_settings.value.synthesize_speech_configs
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

