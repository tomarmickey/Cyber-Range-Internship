<#
.SYNOPSIS
    Remediation for WN11-AU-000050 - Process Creation Auditing.
.DESCRIPTION
    Configures the system to audit 'Process Creation' success events.
.AUTHOR
    Tomar Mickey
#>

auditpol /set /subcategory:"Process Creation" /success:enable
