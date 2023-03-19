resource "scaleway_domain_zone" "domain" {
  domain    = var.domain_name
  subdomain = ""
}

resource "scaleway_domain_record" "a" {
  for_each = var.dns_records_a
  dns_zone = var.domain_name
  type     = "A"
  name     = each.key
  data     = each.value
  ttl      = 300
}

resource "scaleway_domain_record" "cname" {
  for_each = var.dns_records_cname
  dns_zone = var.domain_name
  type     = "CNAME"
  name     = each.key
  data     = each.value
  ttl      = 300
}

resource "scaleway_domain_record" "txt" {
  for_each = var.dns_records_txt
  dns_zone = var.domain_name
  type     = "TXT"
  name     = each.key
  data     = each.value
  ttl      = 300
}