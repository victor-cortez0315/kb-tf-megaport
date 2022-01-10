terraform {
  required_providers {
    megaport = {
      source = "megaport/megaport"
      version = "0.1.10"
    }
  }
}

provider "megaport" {
    username                = var.megaport_username
    password                = var.megaport_password
    #mfa_otp_key             = "ABCDEFGHIJK01234"
    accept_purchase_terms   = true
    delete_ports            = true
    environment             = "staging"
}