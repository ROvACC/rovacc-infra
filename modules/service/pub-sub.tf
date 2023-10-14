resource "google_pubsub_topic" "romatsa_notam_update_topic" {
  name = "romatsa-notam-update-${var.environment}"

  labels = local.labels

  message_retention_duration = "86600s"
}
