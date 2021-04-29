resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_app_service_plan" "example" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  kind                = "Linux"
  reserved            = true


  sku {
    tier = "Basic"
    size = "B1"
  }
  
}


resource "azurerm_app_service" "dockerapp" {
  name                =  var.app_service_name
  location            =  var.resource_group_location
  resource_group_name =  var.resource_group_name
  app_service_plan_id =  azurerm_app_service_plan.example.id
 

  site_config {
    app_command_line = ""
    linux_fx_version = "COMPOSE|${filebase64("module.azure/compose.yml")}"
    }

}

