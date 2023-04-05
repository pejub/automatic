$Connection=Get-AutomationConnection -Name AzureRunAsConnection         

"Logging in to Azure..."
    Connect-AzAccount `
        -ServicePrincipal `
        -TenantId $Connection.TenantId `
        -ApplicationId $Connection.ApplicationId `
        -CertificateThumbprint $Connection.CertificateThumbprint 

        # Next line should be alter to use a parameter.
        get-azvm -ResourceGroupName "VMs" | convertto-json
