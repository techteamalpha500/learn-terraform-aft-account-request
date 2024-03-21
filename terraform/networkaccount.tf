module "networkaccount" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "arunclement1319@gmail.com"
    AccountName               = "testaccount2"
    ManagedOrganizationalUnit = "SharedServices(ou-ho1i-6yempsh9)"
    SSOUserEmail              = "arunclement1319@gmail.com"
    SSOUserFirstName          = "testaccount2"
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

  account_customizations_name = "SharedServiceAccount"
}
