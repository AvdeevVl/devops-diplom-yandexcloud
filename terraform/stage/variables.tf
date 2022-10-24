variable "yandex_cloud_id" {
  default = "b1gu1gt5nqi6lqgu3t7s"
}

variable "yandex_folder_id" {
  default = "b1gaec42k169jqpo02f7"
}

variable "zones" {
  type    = list(string)
}

variable "cidr" {
  type    = list(string)
}
