provider "okta" {
  org_name  = "dev-460564"
  base_url  = "okta.com"
  api_token = "00DOd-xVcpbabW_7mSE48RZyb6Jo94-1o1rmnJ_GYf"
}

resource "okta_user" "two44" {
  first_name = var.first_name
  last_name  = var.last_name
  login      = var.login
  email      = var.email
  status     = "STAGED"
}

resource "okta_group" "exa44" {
  name        = var.name
  description = var.description
  lifecycle {
    prevent_destroy = true
}

