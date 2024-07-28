terraform {
  required_version = "~> 1.0"

  backend "s3" {
    bucket         = "aux-terraform-states"
    key            = "databricks.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "aux-terraform-lock"
  }
}
