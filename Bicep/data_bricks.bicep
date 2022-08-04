param databricksWorkspaceName string = 'databricks${uniqueString(resourceGroup().id)}'
param data_bricks_location string = resourceGroup().location
param data_bricks_sku string = 'trial'

var managedResourceGroupName = 'databricks-rg-${databricksWorkspaceName}-${uniqueString(databricksWorkspaceName, resourceGroup().id)}'

resource databricksWorkspaceName_resource 'Microsoft.Databricks/workspaces@2018-04-01' = {
  name: databricksWorkspaceName
  location: data_bricks_location
  sku: {
    name: data_bricks_sku
  }
  properties: {
    managedResourceGroupId: subscriptionResourceId('Microsoft.Resources/resourceGroups', managedResourceGroupName)
    authorizations: []
  }
}

