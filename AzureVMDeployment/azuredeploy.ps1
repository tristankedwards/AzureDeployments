#import-module azurerm

#login-azurermaccount

New-AzureRMResourceGroup -Name Bacon1234 -Location "West US" 

$Deployment = @{
	Name = 'BaconDeployment1';
	ResourceGroupname = 'Bacon1234';
	Mode = 'Complete';
	TemplateFile = "$PSScriptRoot\azuredeploy.json";
	TemplateParameterObject = @{
		newStorageAccountName = 'Bacon1234';
		vmName = 'tkebacon';
		adminUsername = 'edwardst';
		adminPassword = 'SuperCoolPassword123!';
		dnsNameForPublicIP = 'tkebaconvmtest';
		
	}
	Force = $true;
}
New-AzureRMResourceGroupDeployment @Deployment;
