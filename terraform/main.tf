module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "arunclementtemparun@gmail.com"
    AccountName               = "testnetwork"
    ManagedOrganizationalUnit = "SharedServices"
    SSOUserEmail              = "arunclementtemparun@gmail.com"
    SSOUserFirstName          = "testnetwork"
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

  account_customizations_name = "testnetwork"
}
