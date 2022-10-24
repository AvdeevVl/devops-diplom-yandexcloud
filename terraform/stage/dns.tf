
resource "yandex_dns_zone" "zone1" {
  name        = "avdeevvl-public-zone"
  description = "avdeevvl public zone"

  labels = {
    label1 = "avdeevvl-public"
  }

  zone    = "avdeev.online."
  public  = true
}


resource "yandex_dns_recordset" "rs1" {
  zone_id = yandex_dns_zone.zone1.id
  name    = "avdeev.online."
  type    = "A"
  ttl     = 200
  data    = [" ${yandex_compute_instance.nginx.network_interface.0.nat_ip_address} "]
}

resource "yandex_dns_recordset" "rs2" {
  zone_id = yandex_dns_zone.zone1.id
  name    = "www.avdeev.online."
  type    = "A"
  ttl     = 200
  data    = [" ${yandex_compute_instance.nginx.network_interface.0.nat_ip_address} "]
}


resource "yandex_dns_recordset" "rs3" {
  zone_id = yandex_dns_zone.zone1.id
  name    = "gitlab.avdeev.online."
  type    = "A"
  ttl     = 200
  data    = [" ${yandex_compute_instance.nginx.network_interface.0.nat_ip_address} "]
}

resource "yandex_dns_recordset" "rs4" {
  zone_id = yandex_dns_zone.zone1.id
  name    = "grafana.avdeev.online."
  type    = "A"
  ttl     = 200
  data    = [" ${yandex_compute_instance.nginx.network_interface.0.nat_ip_address} "]
}

resource "yandex_dns_recordset" "rs5" {
  zone_id = yandex_dns_zone.zone1.id
  name    = "prometheus.avdeev.online."
  type    = "A"
  ttl     = 200
  data    = [" ${yandex_compute_instance.nginx.network_interface.0.nat_ip_address} "]
}

resource "yandex_dns_recordset" "rs6" {
  zone_id = yandex_dns_zone.zone1.id
  name    = "alertmanager.avdeev.online."
  type    = "A"
  ttl     = 200
  data    = [" ${yandex_compute_instance.nginx.network_interface.0.nat_ip_address} "]
}
