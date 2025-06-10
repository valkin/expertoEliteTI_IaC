resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: 'st01labv1'
  location: 'eastus'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}
