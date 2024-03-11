module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "arunclement1314@gmail.com"
    AccountName               = "CentralNetwork-test"
    ManagedOrganizationalUnit = "SharedServices(ou-ho1i-6yempsh9)"
    SSOUserEmail              = "arunclement1314@gmail.com"
    SSOUserFirstName          = "CentralNetwork-test"
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

  account_customizations_name = "CentralNetwork-test"
}
