param DataLake_name string
param DataLake_location string
param DataLake_tagName1 string
param DataLake_tagName2 string
param DataLake_computePolicies_name string
param DataLake_computePolicies_maxDegreeOfParallelismPerJob int
param DataLake_computePolicies_minPriorityPerJob int
param DataLake_computePolicies_objectId string
param DataLake_computePolicies_objectType string
param DataLake_dataLakeStoreAccounts_name string
param DataLake_dataLakeStoreAccounts_suffix string
param DataLake_defaultDataLakeStoreAccount string
param DataLake_firewallAllowAzureIps string
param DataLake_firewallRules_name string
param DataLake_firewallRules_endIpAddress string
param DataLake_firewallRules_startIpAddress string
param DataLake_firewallState string
param DataLake_maxDegreeOfParallelism int
param DataLake_maxDegreeOfParallelismPerJob int
param DataLake_maxJobCount int
param DataLake_minPriorityPerJob int
param DataLake_newTier string
param DataLake_queryStoreRetention int
param DataLake_storageAccounts_name string
param DataLake_storageAccounts_accessKey string
param DataLake_storageAccounts_suffix string

resource symbolicname 'Microsoft.DataLakeAnalytics/accounts@2019-11-01-preview' = {
  name: DataLake_name
  location: DataLake_location
  tags: {
    tagName1: DataLake_tagName1
    tagName2: DataLake_tagName2
  }
  properties: {
    computePolicies: [
      {
        name: DataLake_computePolicies_name
        properties: {
          maxDegreeOfParallelismPerJob: DataLake_computePolicies_maxDegreeOfParallelismPerJob
          minPriorityPerJob: DataLake_computePolicies_minPriorityPerJob
          objectId: DataLake_computePolicies_objectId
          objectType: DataLake_computePolicies_objectType
        }
      }
    ]
    dataLakeStoreAccounts: [
      {
        name: DataLake_dataLakeStoreAccounts_name
        properties: {
          suffix: DataLake_dataLakeStoreAccounts_suffix
        }
      }
    ]
    defaultDataLakeStoreAccount: DataLake_defaultDataLakeStoreAccount
    firewallAllowAzureIps: DataLake_firewallAllowAzureIps
    firewallRules: [
      {
        name: DataLake_firewallRules_name
        properties: {
          endIpAddress: DataLake_firewallRules_endIpAddress
          startIpAddress: DataLake_firewallRules_startIpAddress
        }
      }
    ]
    firewallState: DataLake_firewallState
    maxDegreeOfParallelism: DataLake_maxDegreeOfParallelism
    maxDegreeOfParallelismPerJob: DataLake_maxDegreeOfParallelismPerJob
    maxJobCount: DataLake_maxJobCount
    minPriorityPerJob: DataLake_minPriorityPerJob
    newTier: DataLake_newTier
    queryStoreRetention: DataLake_queryStoreRetention
    storageAccounts: [
      {
        name: DataLake_storageAccounts_name
        properties: {
          accessKey: DataLake_storageAccounts_accessKey
          suffix: DataLake_storageAccounts_suffix
        }
      }
    ]
  }
}
