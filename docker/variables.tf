variable "env" {
  description = "env dev or prod"
}
variable "image" {
  description = "image for container"
  type = "map"
  default = {
    dev =  "ghost:latest"
    prod = "ghost:alpine"
  }
}
variable "container_name" {
  description = "Name of container"
  type = "map"
  default = {
    dev = "dev_blog"
    prod = "prod_blog"
  }
}
variable "int_port" {
  description = "Internal port for container"
  type = "map"
  default = {
    dev = "2368"
    prod = "2368"
  }
}
