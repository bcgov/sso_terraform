module "pims-frontend-4391" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=main/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "pims-frontend-4391"
  client_name                         = "PIMS"
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
  login_theme                  = ""
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.idp_stopper.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "https://pims.gov.bc.ca",
    "https://pims.gov.bc.ca/",
    "https://pims.gov.bc.ca/admin/access/requests",
    "https://pims.gov.bc.ca/admin/administrativeAreas",
    "https://pims.gov.bc.ca/admin/agencies",
    "https://pims.gov.bc.ca/admin/users",
    "https://pims.gov.bc.ca/dispose/projects/draft",
    "https://pims.gov.bc.ca/login",
    "https://pims.gov.bc.ca/projects/approval/requests",
    "https://pims.gov.bc.ca/projects/list",
    "https://pims.gov.bc.ca/projects/spl",
    "https://pims.gov.bc.ca/properties/list",
    "https://pims.gov.bc.ca/reports/spl",
    "+"
  ]
  standard_flow_enabled    = true
  service_accounts_enabled = false
  valid_redirect_uris = [
    "https://pims.gov.bc.ca",
    "https://pims.gov.bc.ca/",
    "https://pims.gov.bc.ca/admin/access/requests",
    "https://pims.gov.bc.ca/admin/administrativeAreas",
    "https://pims.gov.bc.ca/admin/agencies",
    "https://pims.gov.bc.ca/admin/users",
    "https://pims.gov.bc.ca/dispose/projects/draft",
    "https://pims.gov.bc.ca/login",
    "https://pims.gov.bc.ca/projects/approval/requests",
    "https://pims.gov.bc.ca/projects/list",
    "https://pims.gov.bc.ca/projects/spl",
    "https://pims.gov.bc.ca/properties/list",
    "https://pims.gov.bc.ca/reports/spl"
  ]
}
