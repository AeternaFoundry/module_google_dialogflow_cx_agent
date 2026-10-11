output "dialogflow_cx_agents_id" {
  description = "Map of id values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no id are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dialogflow_cx_agents_advanced_settings" {
  description = "Map of advanced_settings values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no advanced_settings are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => one(v.advanced_settings) if v.advanced_settings != null && length(v.advanced_settings) > 0 }
}
output "dialogflow_cx_agents_answer_feedback_settings" {
  description = "Map of answer_feedback_settings values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no answer_feedback_settings are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => one(v.answer_feedback_settings) if v.answer_feedback_settings != null && length(v.answer_feedback_settings) > 0 }
}
output "dialogflow_cx_agents_avatar_uri" {
  description = "Map of avatar_uri values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no avatar_uri are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => v.avatar_uri if v.avatar_uri != null && length(v.avatar_uri) > 0 }
}
output "dialogflow_cx_agents_client_certificate_settings" {
  description = "Map of client_certificate_settings values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no client_certificate_settings are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => one(v.client_certificate_settings) if v.client_certificate_settings != null && length(v.client_certificate_settings) > 0 }
}
output "dialogflow_cx_agents_default_language_code" {
  description = "Map of default_language_code values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no default_language_code are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => v.default_language_code if v.default_language_code != null && length(v.default_language_code) > 0 }
}
output "dialogflow_cx_agents_delete_chat_engine_on_destroy" {
  description = "Map of delete_chat_engine_on_destroy values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no delete_chat_engine_on_destroy are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => v.delete_chat_engine_on_destroy if v.delete_chat_engine_on_destroy != null }
}
output "dialogflow_cx_agents_deletion_policy" {
  description = "Map of deletion_policy values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no deletion_policy are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "dialogflow_cx_agents_description" {
  description = "Map of description values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no description are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => v.description if v.description != null && length(v.description) > 0 }
}
output "dialogflow_cx_agents_display_name" {
  description = "Map of display_name values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no display_name are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "dialogflow_cx_agents_enable_multi_language_training" {
  description = "Map of enable_multi_language_training values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no enable_multi_language_training are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => v.enable_multi_language_training if v.enable_multi_language_training != null }
}
output "dialogflow_cx_agents_enable_spell_correction" {
  description = "Map of enable_spell_correction values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no enable_spell_correction are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => v.enable_spell_correction if v.enable_spell_correction != null }
}
output "dialogflow_cx_agents_enable_stackdriver_logging" {
  description = "Map of enable_stackdriver_logging values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no enable_stackdriver_logging are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => v.enable_stackdriver_logging if v.enable_stackdriver_logging != null }
}
output "dialogflow_cx_agents_gen_app_builder_settings" {
  description = "Map of gen_app_builder_settings values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no gen_app_builder_settings are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => one(v.gen_app_builder_settings) if v.gen_app_builder_settings != null && length(v.gen_app_builder_settings) > 0 }
}
output "dialogflow_cx_agents_git_integration_settings" {
  description = "Map of git_integration_settings values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no git_integration_settings are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => one(v.git_integration_settings) if v.git_integration_settings != null && length(v.git_integration_settings) > 0 }
  sensitive   = true
}
output "dialogflow_cx_agents_location" {
  description = "Map of location values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no location are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => v.location if v.location != null && length(v.location) > 0 }
}
output "dialogflow_cx_agents_locked" {
  description = "Map of locked values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no locked are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => v.locked if v.locked != null }
}
output "dialogflow_cx_agents_name" {
  description = "Map of name values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no name are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dialogflow_cx_agents_personalization_settings" {
  description = "Map of personalization_settings values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no personalization_settings are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => one(v.personalization_settings) if v.personalization_settings != null && length(v.personalization_settings) > 0 }
}
output "dialogflow_cx_agents_project" {
  description = "Map of project values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no project are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => v.project if v.project != null && length(v.project) > 0 }
}
output "dialogflow_cx_agents_satisfies_pzi" {
  description = "Map of satisfies_pzi values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no satisfies_pzi are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => v.satisfies_pzi if v.satisfies_pzi != null }
}
output "dialogflow_cx_agents_satisfies_pzs" {
  description = "Map of satisfies_pzs values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no satisfies_pzs are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => v.satisfies_pzs if v.satisfies_pzs != null }
}
output "dialogflow_cx_agents_security_settings" {
  description = "Map of security_settings values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no security_settings are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => v.security_settings if v.security_settings != null && length(v.security_settings) > 0 }
}
output "dialogflow_cx_agents_speech_to_text_settings" {
  description = "Map of speech_to_text_settings values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no speech_to_text_settings are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => one(v.speech_to_text_settings) if v.speech_to_text_settings != null && length(v.speech_to_text_settings) > 0 }
}
output "dialogflow_cx_agents_start_flow" {
  description = "Map of start_flow values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no start_flow are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => v.start_flow if v.start_flow != null && length(v.start_flow) > 0 }
}
output "dialogflow_cx_agents_start_playbook" {
  description = "Map of start_playbook values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no start_playbook are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => v.start_playbook if v.start_playbook != null && length(v.start_playbook) > 0 }
}
output "dialogflow_cx_agents_supported_language_codes" {
  description = "Map of supported_language_codes values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no supported_language_codes are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => v.supported_language_codes if v.supported_language_codes != null && length(v.supported_language_codes) > 0 }
}
output "dialogflow_cx_agents_text_to_speech_settings" {
  description = "Map of text_to_speech_settings values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no text_to_speech_settings are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => one(v.text_to_speech_settings) if v.text_to_speech_settings != null && length(v.text_to_speech_settings) > 0 }
}
output "dialogflow_cx_agents_time_zone" {
  description = "Map of time_zone values across all dialogflow_cx_agents, keyed the same as var.dialogflow_cx_agents except keys with no time_zone are omitted"
  value       = { for k, v in google_dialogflow_cx_agent.dialogflow_cx_agents : k => v.time_zone if v.time_zone != null && length(v.time_zone) > 0 }
}

