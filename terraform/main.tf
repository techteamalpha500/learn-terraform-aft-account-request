module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "garunclement128@gmail.com"
    AccountName               = "networkacc"
    ManagedOrganizationalUnit = "SharedServices"
    SSOUserEmail              = "garunclement128@gmail.com"
    SSOUserFirstName          = "networkacc"
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

  account_customizations_name = "networkacc"
}
