param location string = resourceGroup().location

resource azbicepasp024 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: 'azbicep-dev-eus-asp024'
  location: location
  sku: {
    name: 'B1'
    capacity: 1
  }
}

resource azwebapp024 'Microsoft.Web/sites@2022-09-01' = {
  name: 'azbicep-dev-eus-asp024'
  location: location
  properties: {
    serverFarmId: azbicepasp024.id
  }
}
