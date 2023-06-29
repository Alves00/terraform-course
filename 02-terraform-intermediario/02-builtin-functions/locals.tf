locals {

  instance_number = lookup(var.instance_number, var.env)

  file_ext = "zip"

  object_name = "arquivo-gerado-por-template"


  common_tags = {
    "Owner" = "Matheus Alves"

    "Year" = "2023"
  }
}
