data "keycloak_authentication_flow" "test_nk_idir_bceid_basic_3984_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "test-nk-idir-bceid-basic-3984" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=main/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "test-nk-idir-bceid-basic-3984"
  client_name                         = "test-nk-idir-bceid-basic"
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
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.test_nk_idir_bceid_basic_3984_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "http://example",
    "+"
  ]
  standard_flow_enabled    = true
  service_accounts_enabled = false
  valid_redirect_uris = [
    "http://example"
  ]
}
