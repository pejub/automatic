$Connection=Get-AutomationConnection -Name AzureRunAsConnection         

"Logging in to Azure..."
    Connect-AzAccount `
        -ServicePrincipal `
        -TenantId $Connection.TenantId `
        -ApplicationId $Connection.ApplicationId `
        -CertificateThumbprint $Connection.CertificateThumbprint 

        get-azvm -ResourceGroupName "VMs"
