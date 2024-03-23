variable "username" {
  type = string
  # defaulting username to an empty string, the terraform provider will then try to look up the information from the current environment
  default = ""
}
