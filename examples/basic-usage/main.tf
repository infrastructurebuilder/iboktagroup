terraform {
  required_version = ">= 1.11.0"

  required_providers {
    oktapam = {
      source  = "okta/oktapam"
      version = "~> 0.7"
    }
  }
}

module "test_moduel" {
  source = "../.." # https://github.com/infrastructurebuilder/iboktagroup.git
  group = "test"
  group_discriminator_name = "tx.group"
  description_prefix = "Test module for Okta group"
  gateway_selector = "environment=staging"
}