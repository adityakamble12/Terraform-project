# Configure the AWS Provider
provider "aws" {
  shared_config_files      = ["/home/ubuntu/.aws/conf"]
  shared_credentials_files = ["/home/ubuntu/.aws/creds"]
  profile                  = "Terraform-project"
}
