module "met-gold-4795" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=main/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "met-gold-4795"
  client_name                         = "MET"
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
  additional_role_attribute    = ""
  login_theme                  = "bcgov-idp-stopper-no-header-title"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
  standard_flow_enabled        = true
  service_accounts_enabled     = false
  valid_redirect_uris = [
    "https://epic-engage-oidc-test.apps.gold.devops.gov.bc.ca/auth/realms/met/broker/idir/endpoint/*",
    "https://met-oidc-test.apps.gold.devops.gov.bc.ca/auth/realms/met/broker/idir/endpoint/*"
  ]
}
