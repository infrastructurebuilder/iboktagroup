terraform {
  required_version = ">= 1.11.0"

  required_providers {
    oktapam = {
      source  = "okta/oktapam"
      version = "~> 0.7"
    }
  }
}