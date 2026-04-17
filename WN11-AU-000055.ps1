<#
.SYNOPSIS
    Remediation for WN11-AU-000055 - Process Termination Auditing.
.DESCRIPTION
    Configures the system to audit 'Process Termination' success events.
.AUTHOR
    Tomar Mickey
#>

auditpol /set /subcategory:"Process Termination" /success:enable
