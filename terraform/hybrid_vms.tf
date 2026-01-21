# Look up the latest Amazon Linux AMI (No hardcoded IDs)
data "aws_ami" "latest_linux" {
  most_recent = true
  owners      = ["amazon"]
  filter { name = "name", values = ["amzn2-ami-hvm-*-x86_64-gp2"] }
}

# Conditional Deployment Logic
resource "aws_instance" "app_node" {
  count         = var.target_env == "aws" ? 1 : 0
  ami           = data.aws_ami.latest_linux.id
  instance_type = "t3.medium"
  
  tags = {
    Name = "Hybrid-Node-AWS"
    Managed_By = "Terraform"
  }
}

# Note for Recruiters: When target_env is "on_prem", I utilize local 
# provider logic to provision on HPE SimpliVity clusters.
