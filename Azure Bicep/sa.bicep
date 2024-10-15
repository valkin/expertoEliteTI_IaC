resource storageAccount 'Microsoft.Storage/storageAccounts@2023-04-01' = {
  name: 'storageaccounttestlab'
  location: 'eastus'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}
