param name string
param location string
param sku_name string
 
resource logAnalyticsWorkspace 'Microsoft.OperationalInsights/workspaces@2020-10-01' = {
  name: name
  location: location
  properties: {
    sku: {
      name: sku_name
    }
  }
}
