module "service-account-team-763-4140" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=main/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-763-4140"
  team_id     = 763
  description = "CSS App Created"
}
