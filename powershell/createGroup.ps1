Connect-AzureAD

New-AzureADGroup -Description "Cleaning" -DisplayName "Cleaning" -MailEnabled $false -SecurityEnabled $true -MailNickName "Cleaning"

Add-AzureADGroupMember -ObjectId "<groupObjectId>" -RefObjectId "<newMembersObjectId>"
Add-AzureADGroupMember -ObjectId "<groupObjectId>" -RefObjectId "<newMembersObjectId>"