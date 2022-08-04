param name string
param resource_id string
param throughput string

resource sqlDb 'Microsoft.DocumentDB/databaseAccounts/sqlDatabases@2021-06-15' = {
  name: name
  properties: {
    resource: {
      id: resource_id
    }
    options: {
      throughput: throughput
    }
  }
}
