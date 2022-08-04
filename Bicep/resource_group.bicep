targetScope = 'subscription'

param resource_group_name string
param resource_group_location string


resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resource_group_name
  location: resource_group_location
}

