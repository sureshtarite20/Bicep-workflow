@description('storage account name')
param storage_account_name string = 'st${uniqueString(resourceGroup().name)}'
@description('storage account location')
param location string = 'eastus'
resource storageaccount 'Microsoft.Storage/storageAccounts@2022-09-01' ={
  name: storage_account_name
  location: location
  kind: 'StorageV2'
  properties:{
    minimumTlsVersion: 'TLS1_2'
  }
  sku:{
    name: 'Standard_LRS'
  }
  
  
}
