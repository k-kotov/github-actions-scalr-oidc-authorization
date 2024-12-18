# github-actions-scalr-oidc-authorization
This repository demonstrates testing the ability to exchange a GitHub Actions OIDC ID token for a temporary Scalr service account token. The repository contains an OpenTofu configuration and includes a GitHub Actions workflow triggered on pushes to the main branch.

The workflow exchanges the OIDC ID token for a temporary Scalr service account token, which is then written to the OpenTofu CLI configuration for authentication with Scalr. It also generates an override configuration that directs OpenTofu to use Scalr as the remote backend. Finally, the workflow executes an OpenTofu run using the override configuration and temporary Scalr credentials to interact with Scalr.

By using temporary tokens instead of long-term credentials, this setup enhances security by eliminating the need to store persistent Scalr credentials. It demonstrates the seamless integration of OpenTofu, GitHub Actions, and Scalr's remote backend using temporary service account credentials.
