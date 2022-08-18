data "keycloak_authentication_flow" "hmcr_4028_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "hmcr-4028" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=main/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "hmcr-4028"
  client_name                         = "HMCR "
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
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.hmcr_4028_browserflow.id
  standard_flow_enabled        = true
  service_accounts_enabled     = false
  valid_redirect_uris = [
    "https://tst-hmcr.th.gov.bc.ca"
  ]
}
