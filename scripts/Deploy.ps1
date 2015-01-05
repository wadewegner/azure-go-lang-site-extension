Switch-AzureMode -Name AzureResourceManager

$subName = "YOURSUBSCRIPTIONNAME"
$userName = "YOURORGIDUSERNAME"
$securePassword = ConvertTo-SecureString -String "YOURPASSWORD" -AsPlainText -Force
$name = "YOURRESOURCEGROUPNAME"
$location = "West US"
$templateFile = "Template.json"
$siteName = $name + "Site"
$hostingPlanName = $name

$cred = New-Object System.Management.Automation.PSCredential($userName, $securePassword)
Add-AzureAccount -Credential $cred 

Select-AzureSubscription -SubscriptionName $subName
New-AzureResourceGroup -Name $name -Location $location -TemplateFile $templateFile -siteName $siteName -hostingPlanName $hostingPlanName -siteLocation $location -Force
 
Switch-AzureMode -Name AzureServiceManagement