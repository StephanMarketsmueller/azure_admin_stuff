Connect-AzureAD

$PasswordProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$PasswordProfile.Password = "<ChooseAPasswordHere>"
$PasswordProfile.EnforceChangePasswordPolicy = $true

New-AzureADUser -DisplayName "Test Scriptuser" -PasswordProfile $PasswordProfile -UserPrincipalName "test.scriptuser@example.com" -AccountEnabled $true -MailNickName "TestScriptUser"