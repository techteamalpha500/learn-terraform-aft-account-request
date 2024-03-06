module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "garunclement127@gmail.com"
    AccountName               = "sharedacc"
    ManagedOrganizationalUnit = "ou-ho1i-6yempsh9"
    SSOUserEmail              = "garunclement127@gmail.com"
    SSOUserFirstName          = "sharedacc"
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

  account_customizations_name = "sharedacc"
}
