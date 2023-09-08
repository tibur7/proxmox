variable "ssh_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCnga1Fl4thEkr20O6wm1+c0CXDVANiJWKOke8ebF+l1igVWr1a7ykYkM77yyOnq4s/3zdKbQp9L1iF7p+5eGlrjQwwRhoAjjO4KJEOop0Sd4Dt6tBjwG903UaFKSY1Xs0f87s/72JxDdL/nse8JYUF4Z1qyCbLw1rSIrxnjlPYayGaV+Yp0PAaHrWbje8EULRcv80X3Uj4jCAtmmDRjjGvsD40BCou5CRJpgipXiHevBksfu7HjCLfjsQyOpdC5GX+FM0TCArrK4AD7gtVdTEfaBpiVkr3kvGZqu2m+sktu8W+jjCEncS/CTY6dR7cg192sLyg7GRNThl9C6j3fkGH52MYnNBSfhscI+Gvqqp7sJ+GKlqSQoyS6Jlcy6cUSXGp0nDrqVn1lbsFWJQj/Ycr/CRKwE3widutHRzgT9EYgiCgRjgJyOCwOvsvje4Ke1BVKJ4RMI7vzA/Hyd1d+oHMFkJ5ZlFNAhJoIGePG9kthy7B7O6UgDVPluVaw1ee25k= tibor@pve"
}

variable "proxmox_host" {
    default = "192.168.0.200"
}

variable "template_name" {
    default = "ubuntu-2004-cloudinit-template"
}