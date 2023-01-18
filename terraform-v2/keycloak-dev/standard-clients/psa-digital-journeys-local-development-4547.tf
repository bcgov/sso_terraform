module "psa-digital-journeys-local-development-4547" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=main/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "psa-digital-journeys-local-development-4547"
  client_name                         = "PSA - Digital Journeys - Local Development"
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "idir",
    "bceidbasic",
    "common"
  ]
  description                  = "CSS App Created"
  additional_role_attribute    = ""
  login_theme                  = ""
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
  standard_flow_enabled        = true
  service_accounts_enabled     = false
  valid_redirect_uris = [
    "http://localhost:3000/*",
    "https://digital-journeys-keycloak-dev.apps.silver.devops.gov.bc.ca/auth/realms/psa-digital-journey-dev/*",
    "https://keycloak.freshworks.club/auth/realms/psa-digital-journey-local/*"
  ]
}
