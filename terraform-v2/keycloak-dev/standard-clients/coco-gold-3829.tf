data "keycloak_authentication_flow" "coco_gold_3829_browserflow" {
  realm_id = var.standard_realm_id
  alias    = "idp stopper"
}
module "coco-gold-3829" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=main/modules/standard-client"
  realm_id    = var.standard_realm_id
  client_id   = "coco-gold-3829"
  client_name = "CHEFS Login"
  valid_redirect_uris = [
    "http://192.168.1.65:8082/*",
    "http://localhost:8080/*",
    "http://localhost:8081/*",
    "http://localhost:8082/*",
    "https://localhost:8080/*",
    "https://lochttps://localhost:8082/*alhost:8081/*"
  ]
  access_token_lifespan               = ""
  client_session_idle_timeout         = ""
  client_session_max_lifespan         = ""
  client_offline_session_idle_timeout = ""
  client_offline_session_max_lifespan = ""
  idps = [
    "idir",
    "azureidir",
    "bceidboth",
    "common"
  ]
  description                  = "CSS App Created"
  override_authentication_flow = true
  browser_authentication_flow  = data.keycloak_authentication_flow.coco_gold_3829_browserflow.id
  access_type                  = "PUBLIC"
  pkce_code_challenge_method   = "S256"
  web_origins = [
    "http://192.168.1.65:8082/*",
    "http://localhost:8080/*",
    "http://localhost:8081/*",
    "http://localhost:8082/*",
    "https://localhost:8080/*",
    "https://lochttps://localhost:8082/*alhost:8081/*",
    "+"
  ]
}
