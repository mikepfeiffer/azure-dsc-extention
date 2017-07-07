$resourceGroup = 'Servers'
$location = 'westus2'
$vmName = 'Srv1'
$storageName = '41480434'

Publish-AzureRmVMDscConfiguration -ConfigurationPath .\WindowsWebServer.ps1 `
-ResourceGroupName $resourceGroup `
-StorageAccountName $storageName -force

Set-AzureRmVmDscExtension -Version 2.21 `
-ResourceGroupName $resourceGroup `
-VMName $vmName `
-ArchiveStorageAccountName $storageName `
-ArchiveBlobName WindowsWebServer.ps1.zip `
-AutoUpdate:$true `
-ConfigurationName IIS