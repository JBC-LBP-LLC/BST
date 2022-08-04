param webSiteName string
param location string
param identity_type string
param tags_displayName string
param tags_ProjectName string
//param logAnalyticsWorkspace string
param appServicePlanid string
param httpsOnly bool
param minTlsVersion int

resource appService 'Microsoft.Web/sites@2020-06-01' = {
  name: webSiteName
  location: location
  identity: {
    type: identity_type
  }
  tags: {
    displayName: tags_displayName
    ProjectName: tags_ProjectName
  }
  dependsOn: [
    //logAnalyticsWorkspace
  ]
  properties: {
    serverFarmId: appServicePlanid
    httpsOnly: httpsOnly
    siteConfig: {
      minTlsVersion: minTlsVersion
    }
  }
}
