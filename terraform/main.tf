module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "arunclement1313@gmail.com"
    AccountName               = "CentralSecurity"
    ManagedOrganizationalUnit = "Security"
    SSOUserEmail              = "arunclement1313@gmail.com"
    SSOUserFirstName          = "CentralSecurity"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Creating new account"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "CentralSecurity"
}
