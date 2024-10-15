resource vnet 'Microsoft.Network/virtualNetworks@2023-09-01' = {
  name: 'labvnet'
   location: 'eastus'
    properties: {
       addressSpace: {
         addressPrefixes: [
          '10.13.37.0/24'
         ]
       }
        subnets: [
           {
             name: 'labsubnet'
              properties: {
                 addressPrefix: '10.13.37.0/24'
              }
           }
        ]
    }
}

resource nic 'Microsoft.Network/networkInterfaces@2023-09-01' = {
  name: 'labvmnic'
   location: 'eastus'
    properties: {
       ipConfigurations: [
         {
           name: 'ipconfig1'
            properties: {
               subnet: {
                 id: vnet.properties.subnets[0].id
               }
            }
         }
       ]
    }
}
