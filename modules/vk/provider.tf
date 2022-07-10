terraform {
  required_providers {
    vkcs = {
      source = "vk-cs/vkcs"
      version = "0.1.6"
    }
  }
}

## Place credentials to the credentials.tf
#provider "vkcs" {
#    username   = ""
#    password   = ""
#    project_id = ""
#    region     = ""
#}