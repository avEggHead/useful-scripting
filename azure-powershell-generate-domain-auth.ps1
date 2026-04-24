#this will generate the EPP code or auth code that you can use to transfer a domain from azure to another registrar
#allowing the sale of a domain purchased through Azure cloud.

Invoke-AzRestMethod `
    -Path "/subscriptions/<subscription id>/resourceGroups/<resource group>/providers/Microsoft.DomainRegistration/domains/<domain>/transferout?api-version=2021-02-01" `
    -Method PUT