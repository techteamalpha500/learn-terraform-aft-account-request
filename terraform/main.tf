module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "garunclement129@gmail.com"
    AccountName               = "networkacctest"
    ManagedOrganizationalUnit = "SharedServices"
    SSOUserEmail              = "garunclement129@gmail.com"
    SSOUserFirstName          = "networkacctest"
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
