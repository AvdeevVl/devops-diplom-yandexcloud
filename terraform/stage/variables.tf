variable "yandex_cloud_id" {
  default = "b1g3o7gjj3agmvdo9j48"
}

variable "yandex_folder_id" {
  default = "b1gvtrm6k3eqkc63ph0e"
}

variable "zones" {
  type    = list(string)
}

variable "cidr" {
  type    = list(string)
}
