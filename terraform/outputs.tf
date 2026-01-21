output "server_ips" {
  value       = aws_instance.app_server.*.private_ip
  description = "Private IPs for Ansible inventory"
}
