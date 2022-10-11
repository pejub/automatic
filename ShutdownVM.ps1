$Connection=Get-AutomationConnection -Name AzureRunAsConnection         

"Logging in to Azure..."
    Connect-AzAccount `
        -ServicePrincipal `
        -TenantId $Connection.TenantId `
        -ApplicationId $Connection.ApplicationId `
        -CertificateThumbprint $Connection.CertificateThumbprint 

Stop-AzVM -Name VM1 -ResourceGroupName VMs –Force