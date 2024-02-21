module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "testaudit8767@gmail.com"
    AccountName               = "Central"
    ManagedOrganizationalUnit = "Root"
    SSOUserEmail              = "testaudit8767@gmail.com"
    SSOUserFirstName          = "Central"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Central"
}
