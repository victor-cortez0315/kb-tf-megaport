terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "openstacker"

    workspaces {
      name = "kb-tf-megaport_megaport-staging"
    }
  }
}