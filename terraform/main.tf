# Standard AWS Provider Configuration
provider "aws" {
  region = "us-east-1"
}

# Provisioning a Senior-Level Secure Instance
resource "aws_instance" "app_server" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2
  instance_type = "t3.medium"             # Professional grade

  tags = {
    Name        = "Automation-Target-01"
    Environment = "Production"
    ManagedBy   = "Terraform"
    Owner       = "Senior-Cloud-Engineer"
  }

  # This tag is for your HP Server context
  lifecycle {
    prevent_destroy = true
  }
}

output "instance_public_ip" {
  value = aws_instance.app_server.public_ip
}
