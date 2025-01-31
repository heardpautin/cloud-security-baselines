# PowerShell script to enforce Terraform-Security security baseline
terraform init
terraform plan -out=tfplan
terraform apply tfplan
Write-Host 'Terraform security baseline applied: Infrastructure as Code enforced.'
