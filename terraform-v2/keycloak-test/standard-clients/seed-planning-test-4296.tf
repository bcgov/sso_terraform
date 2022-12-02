module "seed-planning-test-4296" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=main/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "seed-planning-test-4296"
  client_name                         = "Seed Planning Test - Test"
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "idir",
    "bceidbusiness",
    "common"
  ]
  description                  = "CSS App Created"
  additional_role_attribute    = ""
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "https://nrfesampleapp-test-app.apps.silver.devops.gov.bc.ca/dashboard",
    "https://nrfesampleapp-test-app.apps.silver.devops.gov.bc.ca/home",
    "https://nrfesampleapp-test-app.apps.silver.devops.gov.bc.ca/logout",
    "https://nrfesampleapp-test-app.apps.silver.devops.gov.bc.ca/silent-check-sso",
    "+"
  ]
  standard_flow_enabled    = true
  service_accounts_enabled = false
  valid_redirect_uris = [
    "https://nrfesampleapp-test-app.apps.silver.devops.gov.bc.ca/dashboard",
    "https://nrfesampleapp-test-app.apps.silver.devops.gov.bc.ca/home",
    "https://nrfesampleapp-test-app.apps.silver.devops.gov.bc.ca/logout",
    "https://nrfesampleapp-test-app.apps.silver.devops.gov.bc.ca/silent-check-sso"
  ]
}
