data "keycloak_authentication_flow" "secure_image_3950_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "secure-image-3950" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=main/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "secure-image-3950"
  client_name                         = "Secure Image"
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "idir",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.secure_image_3950_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "https://oidcdebugger.com/debug",
    "secure-image://client",
    "+"
  ]
  standard_flow_enabled    = true
  service_accounts_enabled = false
  valid_redirect_uris = [
    "https://oidcdebugger.com/debug",
    "secure-image://client"
  ]
}
