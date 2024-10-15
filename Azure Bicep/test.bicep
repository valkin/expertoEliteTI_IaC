resource firewall 'Microsoft.Network/azureFirewalls@2021-05-01' = {
  name: 'name'
  location: location
  properties: {
    sku: {
      name: 'AZFW_VNet'
      tier: 'Standard'
    }    
    firewallPolicy: {
      id: 'firewallPolicy.id'
    }
    ipConfigurations: [
    ]
  }
}
