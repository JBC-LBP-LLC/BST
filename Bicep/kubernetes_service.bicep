param aks_name string
param aks_location string
param aks_identity_type string
param aks_kubernetesVersion string
param aks_dnsPrefix string
param aks_enableRBAC bool
param aks_agentPoolProfiles_name string
param aks_agentPoolProfiles_count int
param aks_agentPoolProfiles_vmSize string
param aks_agentPoolProfiles_osType string
param aks_agentPoolProfiles_mode string
param aks_adminUsername string
param aks_keyData string

resource aksCluster 'Microsoft.ContainerService/managedClusters@2021-03-01' = {
  name: aks_name
  location: aks_location
  identity: {
    type: aks_identity_type
  }
  properties: {
    kubernetesVersion: aks_kubernetesVersion
    dnsPrefix: aks_dnsPrefix
    enableRBAC: aks_enableRBAC
    agentPoolProfiles: [
      {
        name: aks_agentPoolProfiles_name
        count: aks_agentPoolProfiles_count
        vmSize: aks_agentPoolProfiles_vmSize
        osType: aks_agentPoolProfiles_osType
        mode: aks_agentPoolProfiles_mode
      }
    ]
    linuxProfile: {
      adminUsername: aks_adminUsername
      ssh: {
        publicKeys: [
          {
            keyData: aks_keyData
          }
        ]
      }
    }
  }
}
