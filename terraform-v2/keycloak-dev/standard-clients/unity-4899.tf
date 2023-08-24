module "unity-4899" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=main/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "unity-4899"
  client_name                         = "Unity"
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "idir",
    "bceidbasic",
    "bceidbusiness",
    "common"
  ]
  description                  = "CSS App Created"
  additional_role_attribute    = ""
  login_theme                  = ""
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
  standard_flow_enabled        = true
  service_accounts_enabled     = true
  valid_redirect_uris = [
    "http://localhost:44342/*",
    "http://localhost:8080/*",
    "http://localhost:8081/*",
    "http://localhost:8082/*",
    "https://dev.unity.gov.bc.ca",
    "https://localhost:44342/*",
    "https://localhost:8084/*",
    "https://unity-grantmanager-web-d18498-dev.apps.silver.devops.gov.bc.ca/*",
    "https://unity.gov.bc.ca.localhost/*",
    "https://unity.gov.bc.ca.test/*"
  ]
}
