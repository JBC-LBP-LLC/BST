param name string
param location string
param tags_tagName1 string
param tags_tagName2 string
param sku_name string
param sku_tier string

resource symbolicname 'Microsoft.PowerBI/workspaceCollections@2016-01-29' = {
  name: name
  location: location
  tags: {
    tagName1: tags_tagName1
    tagName2: tags_tagName2
  }
  sku: {
    name: sku_name
    tier: sku_tier
  }
}
