data "github_user" "queried_user" {
  username = var.username
}

data "http" "queried_user_ssh_keys" {
  # Use the login name (we actually cannot use the username, since it might be an empty string and does not get updated when github finds a user) to query the ssh keys
  # refer to: https://registry.terraform.io/providers/integrations/github/latest/docs/data-sources/user
  # Unfortunately we cannot use the terraform provider here to output the keys, since it prints the ssh keys without key id
  url = "https://api.github.com/users/${data.github_user.queried_user.login}/keys"
  request_headers = {
    X-GitHub-Api-Version = "2022-11-28"
    Accept               = "application/vnd.github+json"
  }
}

output "ssh_keys" {
  value = jsondecode(data.http.queried_user_ssh_keys.response_body)
}
