# terraform-module-github-ssh-keys

terraform-module-github-ssh-keys

This repository is used to retrieve the ssh keys and ssh key ids of either the
currently logged in Github user or alternatively the keys of the user, that
was given in the "username" Terraform variable.

Unlike the result that is delivered with the standard github terraform
provider, this provider also delivers the Github SSH Key id which
makes it possible to address that key directly in a later stage.

For more information, refer to [this Github issue](https://github.com/integrations/terraform-provider-github/issues/2208)
