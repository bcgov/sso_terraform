module "service-account-team-764-5193" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=main/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-764-5193"
  team_id     = 764
  description = "CSS App Created"
}
