param postgres_name string
param postgres_location string
param postgres_tagName1 string
param postgres_tagName2 string
param postgres_sku_name string
param postgres_sku_tier string
param postgres_administratorLogin string
param postgres_administratorLoginPassword string
param postgres_availabilityZone string 
param postgres_backupRetentionDays int
param postgres_geoRedundantBackup string
param postgres_createMode string
param postgres_highAvailability_mode string
param postgres_highAvailability_standbyAvailabilityZone string
param postgres_maintenanceWindow_customWindow string
param postgres_maintenanceWindow_dayOfWeek int
param postgres_maintenanceWindow_startHour int
param postgres_maintenanceWindow_startMinute int
param postgres_network_delegatedSubnetResourceId string
param postgres_network_privateDnsZoneArmResourceId string
param postgres_pointInTimeUTC string
param postgres_sourceServerResourceId string
param postgres_storageSizeGB int
param postgres_version string

resource postgres 'Microsoft.DBforPostgreSQL/flexibleServers@2022-01-20-preview' = {
  name: postgres_name
  location: postgres_location
  tags: {
    tagName1: postgres_tagName1
    tagName2: postgres_tagName2
  }
  sku: {
    name: postgres_sku_name
    tier: postgres_sku_tier
  }
  properties: {
    administratorLogin: postgres_administratorLogin
    administratorLoginPassword: postgres_administratorLoginPassword
    availabilityZone: postgres_availabilityZone
    backup: {
      backupRetentionDays: postgres_backupRetentionDays
      geoRedundantBackup: postgres_geoRedundantBackup
    }
    createMode: postgres_createMode
    highAvailability: {
      mode: postgres_highAvailability_mode
      standbyAvailabilityZone: postgres_highAvailability_standbyAvailabilityZone
    }
    maintenanceWindow: {
      customWindow: postgres_maintenanceWindow_customWindow
      dayOfWeek: postgres_maintenanceWindow_dayOfWeek
      startHour: postgres_maintenanceWindow_startHour
      startMinute: postgres_maintenanceWindow_startMinute
    }
    network: {
      delegatedSubnetResourceId: postgres_network_delegatedSubnetResourceId
      privateDnsZoneArmResourceId: postgres_network_privateDnsZoneArmResourceId
    }
    pointInTimeUTC: postgres_pointInTimeUTC
    sourceServerResourceId: postgres_sourceServerResourceId
    storage: {
      storageSizeGB: postgres_storageSizeGB
    }
    version: postgres_version
  }
}
