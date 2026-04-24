#  This will set the name servers for a particular domain
#  Useful if you needing to prove ownership in a domain
#  transfer process such as Azure to Cloudflare

Invoke-AzRestMethod `
    -Path "/subscriptions/<subscription id>/resourceGroups/<resource group>/providers/Microsoft.DomainRegistration/domains/<domain>?api-version=2021-02-01" `
    -Method PATCH `
    -Payload '{
    "properties": {
      "nameServers": [
        "<name server1>",
        "<name server2>"
      ]
    }
  }'