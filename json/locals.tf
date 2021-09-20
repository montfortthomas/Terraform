locals {
  json_data = jsondecode(file("${path.module}/data.json"))
}
