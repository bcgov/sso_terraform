module "client_dss-kirk-1288" {
  source      = "github.com/bcgov/sso-terraform-keycloak-client?ref=main"
  realm_id    = data.keycloak_realm.this.id
  client_name = "dss-kirk-1288"
  valid_redirect_uris = [
    "https://kirk.data.gov.bc.ca/"
  ]
  description = "CSS App Created"
}
