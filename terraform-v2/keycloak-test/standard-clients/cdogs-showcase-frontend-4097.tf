data "keycloak_authentication_flow" "cdogs_showcase_frontend_4097_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "cdogs-showcase-frontend-4097" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=main/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "cdogs-showcase-frontend-4097"
  client_name                         = "CDOGS Showcase frontend (TEST environment)"
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "idir",
    "azureidir",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.cdogs_showcase_frontend_4097_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "https://dgrsc-test.apps.silver.devops.gov.bc.ca/*",
    "+"
  ]
  standard_flow_enabled    = true
  service_accounts_enabled = false
  valid_redirect_uris = [
    "https://dgrsc-test.apps.silver.devops.gov.bc.ca/*"
  ]
}
