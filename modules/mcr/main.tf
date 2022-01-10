terraform {
  required_providers {
    megaport = {
      source = "megaport/megaport"
      version = "0.1.10"
    }
  }
}

resource megaport_mcr mcr {
  mcr_name    = var.name
  location_id = var.location

  router {
    port_speed    = 1000
    requested_asn = 133937
  }
}