module sql_database '../Bicep/sql_database.bicep'= {
  name: 'sqlDb'
  params: {
    name: 'name'
    resource_id: 'id'
    throughput: 'throughput'
  }
}

module keyVault '../Bicep/key_vault.bicep' = {
  name: 'name'
  params: {
    accessPolicies_objectId: 'objectId'
    accessPolicies_tenantId: 'tenantId'
    enabledForDeployment: true
    enabledForDiskEncryption: true
    enabledForTemplateDeployment: true
    location: 'eastus'
    name: 'name'
    permissions_keys: 'get'
    secrets: [
      'list'
      'get'
    ]
    sku_family: 'A'
    sku_name: 'standard'
    tenantId: 'tenantId'
  }
}

module app_service_1_data_transporter '../Bicep/app_service.bicep' = {
  name: 'name'
  params: {
    appServicePlanid: 'appServicePlanid'
    httpsOnly: true
    identity_type: 'SystemAssigned'
    location: 'eastus'
    //logAnalyticsWorkspace: 'id'
    minTlsVersion: '1.2'
    tags_displayName: 'Website'
    tags_ProjectName: 'appname'
    webSiteName: 'name'
  }
}

module app_service_2_insights '../Bicep/app_service.bicep' = {
  name: 'name'
  params: {
    appServicePlanid: 'appServicePlanid'
    httpsOnly: true
    identity_type: 'SystemAssigned'
    location: 'eastus'
    //logAnalyticsWorkspace: 'id'
    minTlsVersion: '1.2'
    tags_displayName: 'Website'
    tags_ProjectName: 'appname'
    webSiteName: 'name'
  }
}

module app_service_3_predictions '../Bicep/app_service.bicep' = {
  name: 'name'
  params: {
    appServicePlanid: 'appServicePlanid'
    httpsOnly: true
    identity_type: 'SystemAssigned'
    location: 'eastus'
    //logAnalyticsWorkspace: 'id'
    minTlsVersion: '1.2'
    tags_displayName: 'Website'
    tags_ProjectName: 'appname'
    webSiteName: 'name'
  }
}

module app_service_4_predictions '../Bicep/app_service.bicep' = {
  name: 'name'
  params: {
    appServicePlanid: 'appServicePlanid'
    httpsOnly: true
    identity_type: 'SystemAssigned'
    location: 'eastus'
    //logAnalyticsWorkspace: 'id'
    minTlsVersion: '1.2'
    tags_displayName: 'Website'
    tags_ProjectName: 'appname'
    webSiteName: 'name'
  }
}

module log_analytics '../Bicep/log_analytics.bicep' = {
  name: 'name'
  params: {
    location: 'eastus'
    name: 'name'
    sku_name: 'Free'
  }
}
