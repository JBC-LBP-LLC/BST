param storage_name string
param storage_location string
param storage_kind string
param storage_sku_name string

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storage_name
  location: storage_location
  kind: storage_kind
  sku: {
    name: storage_sku_name
  }
}
