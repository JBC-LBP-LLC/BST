param redisCache_name string
param redisCache_location string
param redisCache_sku_name string
param redisCache_sku_family string
param redisCache_sku_capacity int

resource redisCache 'Microsoft.Cache/Redis@2019-07-01' = {
  name: redisCache_name
  location: redisCache_location
  properties: {
    sku: {
      name: redisCache_sku_name
      family: redisCache_sku_family
      capacity: redisCache_sku_capacity
    }
  }
}
