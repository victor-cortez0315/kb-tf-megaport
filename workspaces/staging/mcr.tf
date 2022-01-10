data megaport_location datacom_orbit {
    name = "Datacom 6 Orbit"
    market_code = "NZ"
    has_mcr = true
}

data megaport_location equinix_sy1 {
    name = "Equinix SY1"
    market_code = "AU"
    has_mcr = true
}

module "kb_mcr_akl" {
  count                       = 1
  source                      = "../../modules/mcr"
  location                    = data.megaport_location.datacom_orbit.id
  name                        = "KB_AKL_MCR01"
}

module "kb_mcr_sydney" {
  count                       = 1
  source                      = "../../modules/mcr"
  location                    = data.megaport_location.equinix_sy1.id
  name                        = "KB_SYD_MCR022222"
}