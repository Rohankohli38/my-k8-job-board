# backend.tf
terraform {
  backend "s3" {
    bucket         = "job-board-terraform-state-556789079263"  # Create this bucket first
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "job-board-terraform-state-lock"       # Create this table first
  }
}
