resource "uptimerobot_monitor" "website" {
  name         = "My Website"
  type         = "HEARTBEAT"
  interval     = 300
  grace_period = 300

  # Do NOT set url — UptimeRobot generates the heartbeat endpoint automatically.
  # Use heartbeat_url output to get the generated endpoint for use in your app.

  # Optional: Tags for organization
  tags = ["production", "web"]
}

output "heartbeat_endpoint" {
  description = "Send periodic pings to this URL from your application."
  value       = uptimerobot_monitor.website.heartbeat_url
}
