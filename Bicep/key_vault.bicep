param name string
param location string
param enabledForDeployment bool
param enabledForTemplateDeployment bool
param enabledForDiskEncryption bool
param tenantId string
param accessPolicies_tenantId string
param accessPolicies_objectId string
param permissions_keys string
param secrets array
param sku_name string
param sku_family string

resource keyVault 'Microsoft.KeyVault/vaults@2019-09-01' = {
  name: name
  location: location
  properties: {
    enabledForDeployment: enabledForDeployment
    enabledForTemplateDeployment: enabledForTemplateDeployment
    enabledForDiskEncryption: enabledForDiskEncryption
    tenantId: tenantId
    accessPolicies: [
      {
        tenantId: accessPolicies_tenantId
        objectId: accessPolicies_objectId
        permissions: {
          keys: [
            permissions_keys
          ]
          secrets: secrets
        }
      }
    ]
    sku: {
      name: sku_name
      family: sku_family
    }
  }
}
