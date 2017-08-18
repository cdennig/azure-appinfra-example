break
Login-AzureRmAccount

#Get-AzureRmSubscription
#Select-AzureRmSubscription -SubscriptionId ""

$rg = "myappinfra-rg"
New-AzureRmResourceGroup -Name $rg -Location westeurope
New-AzureRmResourceGroupDeployment -ResourceGroupName $rg -Mode Complete -TemplateFile ".\azuredeploy.json" -TemplateParameterFile ".\azuredeploy.parameters.json"