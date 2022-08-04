targetScope = 'subscription'

module resource_group 'resource_group.bicep' = {
  name: 'name'
  params: {
    resource_group_location: 'eastus'
    resource_group_name: 'name'
  }
  scope: subscription('subscription id')
}

module container_registry 'container_registry.bicep' = {
  name: 'container_registry'
  scope: resource_group
  params: {
    containerRegistry_name: 'container_registry' // name of the resource
    containerRegistry_location: 'eastus' // location of the resource group  
    containerRegistry_sku: 'Basic' // Basic, Standard, Premium
    containerRegistry_adminUserEnabled: true // true or false
  }
}

module data_bricks 'data_bricks.bicep' = {
  name: 'data_bricks'
  scope: resource_group
  params: {
    databricksWorkspaceName: 'databricks${uniqueString(resourceGroup().id)}'
    data_bricks_location: 'eastus' // location of the resource group
    data_bricks_sku: 'trial' // trial, standard, premium
  }
}

module data_lake 'data_lake.bicep' = {
  name: 'data_lake'
  scope: resource_group
  params: {
    DataLake_computePolicies_maxDegreeOfParallelismPerJob: 1
    DataLake_computePolicies_minPriorityPerJob: 1
    DataLake_computePolicies_name: 'string'
    DataLake_computePolicies_objectId: 'string'
    DataLake_computePolicies_objectType: 'string'
    DataLake_dataLakeStoreAccounts_name: 'string'
    DataLake_dataLakeStoreAccounts_suffix: 'string'
    DataLake_defaultDataLakeStoreAccount: 'string'
    DataLake_firewallAllowAzureIps: 'string'
    DataLake_firewallRules_endIpAddress: 'string'
    DataLake_firewallRules_name: 'string'
    DataLake_firewallRules_startIpAddress: 'string'
    DataLake_firewallState: 'string'
    DataLake_location: 'string'
    DataLake_maxDegreeOfParallelism: 1
    DataLake_maxDegreeOfParallelismPerJob: 1
    DataLake_maxJobCount: 1
    DataLake_minPriorityPerJob: 1
    DataLake_name: 'string'
    DataLake_newTier: 'string'
    DataLake_queryStoreRetention: 1
    DataLake_storageAccounts_accessKey: 'string'
    DataLake_storageAccounts_name: 'string'
    DataLake_storageAccounts_suffix: 'string'
    DataLake_tagName1: 'string'
    DataLake_tagName2: 'string'
  }
}

module kubernetes_service 'kubernetes_service.bicep' = {
  name: 'kubernetes_service'
  scope: resource_group
  params: {
    aks_name: 'kubernetes_service' // name of the resource
    aks_location: 'eastus' // location of the resource group
    aks_identity_type: 'SystemAssigned' // 'SystemAssigned' or 'UserAssigned'
    aks_kubernetesVersion: '1.13.4' // '1.13.4' or '1.13.3'
    aks_dnsPrefix: 'kubernetes' // 'kubernetes' or 'kubernetes${uniqueString(resourceGroup().id)}'
    aks_enableRBAC: true // true or false
    aks_agentPoolProfiles_name: 'agentpool' // name of the agent pool profile
    aks_agentPoolProfiles_count: 1 // number of agents in the agent pool profile
    aks_agentPoolProfiles_vmSize: 'Standard_D2_v2' // 'Standard_D2_v2' or 'Standard_D4_v2' or 'Standard_D8_v2' or 'Standard_D16_v3' or 'Standard_D32_v3' or 'Standard_D64_v3' or 'Standard_D128_v3' or 'Standard_D64s_v3' or 'Standard_D32s_v3' or 'Standard_D16s_v3' or 'Standard_D8s_v3' or 'Standard_D4s_v3' or 'Standard_D2s_v3' or 'Standard_D1s_v4' or 'Standard_D2m_v3' or 'Standard_D4m_v3' or 'Standard_D8m_v3' or 'Standard_D16m_v3' or 'Standard_D32m_v3' or 'Standard_D64m_v3' or 'Standard_D128m_v3' or 'Standard_D64ms_v3' or 'Standard_D32ms_v3' or 'Standard_D16ms_v3' or 'Standard_D8ms_v3' or 'Standard_D4ms_v3' or 'Standard_D2ms_v3' or 'Standard_D1ms_v4' or 'Standard_D2s_v3' or 'Standard_D4s_v3' or 'Standard_D8s_v3' or 'Standard_D16s_v3' or 'Standard_D32s_v3' or 'Standard_D64s_v3' or 'Standard_D128s_v3' or 'Standard_D256s_v3' or 'Standard_D512s_v3' or 'Standard_D1s_v4' or 'Standard_D2m_v3' or 'Standard_D4m_v3' or 'Standard_D8m_v3' or 'Standard_D16m_v3' or 'Standard_D32m_v3' or 'Standard_D64m_v3' or 'Standard_
    aks_agentPoolProfiles_osType: 'Linux' // 'Linux' or 'Windows'
    aks_agentPoolProfiles_mode: 'System' // 'System' or 'User'
    aks_adminUsername: 'azureuser' // 'azureuser' or 'azureuser${uniqueString(resourceGroup().id)}'
    aks_keyData: 'REQUIRED'
  }
}

module postgres_flex_server 'postgres_flex_server.bicep' = {
  name: 'postgres_flex_server'
  scope: resource_group
  params: {
    postgres_name: 'postgres_flex_server' // name of the resource
    postgres_location: 'eastus' // location of the resource group
    postgres_tagName1: 'value1' // tag name1
    postgres_tagName2: 'value2' // tag name2
    postgres_sku_name: 'FLEX' // 'FLEX' or 'STANDARD' or 'PREMIUM'
    postgres_sku_tier: 'Basic' // 'Basic' or 'Standard' or 'Premium'
    postgres_administratorLogin: 'azureuser' // 'azureuser' or 'azureuser${uniqueString(resourceGroup().id)}'
    postgres_administratorLoginPassword: 'REQUIRED' // 'REQUIRED' or 'azureuser${uniqueString(resourceGroup().id)}'
    postgres_availabilityZone: 'string'
    postgres_backupRetentionDays: 30
    postgres_geoRedundantBackup: 'Enabled' // 'Enabled' or 'Disabled'
    postgres_createMode: 'Default' // 'Default' or 'PointInTimeRestore' or 'Disabled'
    postgres_highAvailability_mode: 'Disabled' // 'Disabled' or 'Enabled'
    postgres_highAvailability_standbyAvailabilityZone: 'string'
    postgres_maintenanceWindow_customWindow: 'string' // 'string' or 'string${uniqueString(resourceGroup().id)}'
    postgres_maintenanceWindow_dayOfWeek: 1
    postgres_maintenanceWindow_startHour: 1
    postgres_maintenanceWindow_startMinute: 1
    postgres_network_delegatedSubnetResourceId: 'string' // 'string' or 'string${uniqueString(resourceGroup().id)}'
    postgres_network_privateDnsZoneArmResourceId: 'string'
    postgres_pointInTimeUTC: 'string'
    postgres_sourceServerResourceId: 'string'
    postgres_storageSizeGB: 32
    postgres_version: 'string'
  }
}

module redis_cache 'redis_cache.bicep' = {
  name: 'redis_cache'
  scope: resource_group
  params: {
    redisCache_name: 'redis_cache' // name of the resource
    redisCache_location: 'eastus' // location of the resource group
    redisCache_sku_name: 'Basic' // 'Basic' or 'Standard' or 'Premium'
    redisCache_sku_family: 'C' // 'C' or 'P' or 'PC'
    redisCache_sku_capacity: 0 // 1 or 2 or 3 or 4 or 5 or 6 or 7 or 8 or 9 or 10 or 11 or 12 or 13 or 14 or 15 or 16 or 17 or 18 or 19 or 20 or 21 or 22 or 23 or 24 or 25 or 26 or 27 or 28 or 29 or 30 or 31 or 32 or 33 or 34 or 35 or 36 or 37 or 38 or 39 or 40 or 41 or 42 or 43 or 44 or 45 or 46 or 47 or 48 or 49 or 50 or 51 or 52 or 53 or 54 or 55 or 56 or 57 or 58 or 59 or 60 or 61 or 62 or 63 or 64 or 65 or 66 or 67 or 68 or 69 or 70 or 71 or 72 or 73 or 74 or 75 or 76 or 77 or 78 or 79 or 80 or 81 or 82 or 83 or 84 or 85 or 86 or 87 or 88 or 89 or 90 or 91 or 92 or 93 or 94 or 95 or 96 or 97 or 98 or 99 or 100 or 101 or 102 or 103 or 104 or 105 or 106 or 107 or 108 or 109 or 110 or 111 or 112 or 113 or 114 or 115 or 116 or 117 or 118 or 119 or 120 or 121 or 122 or 123 or 124 or 125 or 126 or 127 or 128 or 129 or 130 or 131 or 132 or 133 or 134 or 135 or 136 or 137 or 138 or 139 or 140 or 141 or 142 or 143 or 144 or 145 or 146 or 147 or 148 or 149 or 150 or 151 or 152 or 153 or 154 or 155 or 156 or 157 or 158 or 159 or 160 or 161 or 162 or 163 or 164 or 165 or 166 or 167 or 168 or 169 or 170 or 171 or 172 or 173 or 174 or 175 or 176 or 177 or 178 or 179 or 180 or 181 or 182 or 183 or 184 or 185 or 186 or 187 or 188 or 189 or 190 or 191 or 192 or 193 or 194 or 195 or 196 or 197 or 198 or 199 or 200 or 201 or 202
  }
}

module storage_account 'storage_account.bicep' = {
  name: 'storage_account'
  scope: resource_group
  params: {
    storage_name: 'storage_account' // name of the resource
    storage_location: 'eastus' // location of the resource group
    storage_kind: 'StorageV2' // 'Storage' or 'StorageV2' or 'BlobStorage'
    storage_sku_name: 'Premium_LRS' // 'Standard_LRS' or 'Standard_GRS' or 'Standard_RAGRS' or 'Standard_ZRS' or 'Premium_LRS' or 'Premium_ZRS' or 'Standard_LRS_v2' or 'Standard_GRS_v2' or 'Standard_RAGRS_v2' or 'Standard_ZRS_v2' or 'Premium_LRS_v2' or 'Premium_ZRS_v2'
  }
}

module power_bi 'power_bi.bicep' {
  name: 'string'
  scope: resource_group
  params: {
    name: 'power bi'
    location: 'eastus'
    tags_tagName1: 'string'
    tags_tagName2: 'string'
    sku_name: 'S1'
    sku_tier: 'Standard'
  }
}
