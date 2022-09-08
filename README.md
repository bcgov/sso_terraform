# sso-terraform

This repository stores the Terraform scripts to provision BCGov SSO infrastructure in Silver and Gold Keycloak instances.

## Workflow

The general workflow for an SSO integration creation/update is:

1. The requester makes a request via [CSS self-service app](https://bcgov.github.io/sso-requests).
1. The [CSS self-service app](https://bcgov.github.io/sso-requests) backend server dispatches `request` GitHub action.

   - see [.github/workflows/request.yml](.github/workflows/request.yml)

1. The `request` GitHub action creates a PR with the changes and send the PR information to [CSS self-service app](https://bcgov.github.io/sso-requests) backend server.
1. The [CSS self-service app](https://bcgov.github.io/sso-requests) backend server merges the PR via GitHub API endpoint.
1. The [CSS self-service app](https://bcgov.github.io/sso-requests) batch service dispatches `terraform-batch` GitHub actions every given interval.

   - see [.github/workflows/terraform-batch.yml](.github/workflows/terraform-batch.yml)
   - see [.github/workflows/terraform-v2-batch.yml](.github/workflows/terraform-v2-batch.yml)

1. The `terraform-batch` GitHub actions communicate with the [CSS self-service app](https://bcgov.github.io/sso-requests) backend server to check if there is a pending request and if so, applies the Terraform scripts.
1. Once the Terraform scripts applied, it sends the results back to the [CSS self-service app](https://bcgov.github.io/sso-requests) backend server.
