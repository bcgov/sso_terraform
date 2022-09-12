data "keycloak_authentication_flow" "psa_digital_journeys_3961_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "psa-digital-journeys-3961" {
  source                              = "github.com/bcgov/sso-terraform-modules?ref=main/modules/standard-client"
  realm_id                            = var.standard_realm_id
  client_id                           = "psa-digital-journeys-3961"
  client_name                         = "PSA - Digital Journeys"
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
  browser_authentication_flow  = data.keycloak_authentication_flow.psa_digital_journeys_3961_browserflow.id
  standard_flow_enabled        = true
  service_accounts_enabled     = false
  valid_redirect_uris = [
    "https://digital-journeys-keycloak.apps.silver.devops.gov.bc.ca/auth/realms/psa-digital-journey/*"
  ]
}
