param containerRegistry_location string //The location of the file to be uploaded.
param containerRegistry_name string //The name of the file to be uploaded.
param containerRegistry_sku string //The SKU of the file to be uploaded.
param containerRegistry_adminUserEnabled bool //Whether the user is enabled.

resource containerRegistry 'Microsoft.ContainerRegistry/registries@2021-06-01-preview' = {
  name: containerRegistry_name
  location: containerRegistry_location
  sku: {
    name: containerRegistry_sku
  }
  properties: {
    adminUserEnabled: containerRegistry_adminUserEnabled
  }
}
