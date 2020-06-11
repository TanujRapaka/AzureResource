
New-AzResourceGroup -Name "Wu-demo4-group" -Location "EastUS"

$username = "admin"
$password = ConvertTo-SecureString "Password@123" -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ("azureuser", $password)

New-AzVM -Name LinuxVm1 -Credential `
$cred -ResourceGroupName Wu-demo3-group `
-Image Canonical:UbuntuServer:18.04-LTS:latest ` -Size Standard_D2S_V3

New-AzVM -Name LinuxVm2 -Credential `
$cred -ResourceGroupName Wu-demo3-group `
-Image Canonical:UbuntuServer:18.04-LTS:latest ` -Size Standard_D2S_V3 