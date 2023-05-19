module "isd-alm-4856" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=main/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "isd-alm-4856"
  client_name                         = "ISD-ALM"
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
  login_theme                  = ""
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
  standard_flow_enabled        = true
  service_accounts_enabled     = false
  valid_redirect_uris = [
    "https://qc-dev.icm.gov.bc.ca/osp/a/alm/auth/oauth2/landingpad",
    "https://qc-icm-test.apps.gov.bc.ca/osp/a/alm/auth/oauth2/landingpad",
    "https://qc-test.icm.gov.bc.ca/osp/a/alm/auth/oauth2/landingpad",
    "https://qc.icm.gov.bc.ca/osp/a/alm/auth/oauth2/landingpad"
  ]
}
