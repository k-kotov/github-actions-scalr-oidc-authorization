variable "sleep_time" {
  description = "Duration to sleep (e.g., 60s, 1m)"
  type        = string
  default     = "60s"
}

resource "time_sleep" "wait" {
  create_duration = var.sleep_time
}

output "message" {
  value = "Successfully ran OpenTofu configuration with Scalr backend!"
}
