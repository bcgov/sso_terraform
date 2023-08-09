module "service-account-team-1365-4961" {
  source      = "github.com/bcgov/sso-terraform-modules?ref=main/modules/standard-service-account"
  realm_id    = var.standard_realm_id
  client_id   = "service-account-team-1365-4961"
  team_id     = 1365
  description = "CSS App Created"
}
