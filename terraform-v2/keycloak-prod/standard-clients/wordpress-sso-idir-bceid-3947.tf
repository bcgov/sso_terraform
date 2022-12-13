module "wordpress-sso-idir-bceid-3947" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=main/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "wordpress-sso-idir-bceid-3947"
  client_name                         = "WordPress"
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "idir",
    "bceidboth",
    "common"
  ]
  description                  = "CSS App Created"
  additional_role_attribute    = ""
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
  standard_flow_enabled        = true
  service_accounts_enabled     = false
  valid_redirect_uris = [
    "https://bcfd-test.apps.silver.devops.gov.bc.ca/*",
    "https://feedbcdirectory.gov.bc.ca/*",
    "https://localhost/feedbcdirectory/*",
    "https://localhost/fooddirectory/*",
    "https://wp-test.apps.silver.devops.gov.bc.ca/feedbcdirectory/*"
  ]
}
