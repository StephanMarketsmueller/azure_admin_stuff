# All tags in the subscription 
Get-AzTag

# Values and count of tagged ressources with tag 'env'
Get-AzTag env

# Get ressources by tag name
(Get-AzResource -TagName env).name

# Get ressources by tag value
(Get-AzResource -TagValue prod).name