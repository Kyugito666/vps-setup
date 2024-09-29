provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "example" {
  image  = "ubuntu-20-04-x64"
  name   = "my-vps"
  region = "nyc1"
  size   = "s-1vcpu-1gb"
}

variable "do_token" {
  type = string
}
