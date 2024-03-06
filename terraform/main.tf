module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "garunclement125@gmail.com"
    AccountName               = "network-aft"
    ManagedOrganizationalUnit = "SharedServices"
    SSOUserEmail              = "garunclement125@gmail.com"
    SSOUserFirstName          = "network"
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

  account_customizations_name = "network"
}
