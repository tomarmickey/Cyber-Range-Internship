<#
.SYNOPSIS
    Remediation for WN11-AU-000085 - User Account Management Auditing.
.DESCRIPTION
    Configures the system to audit 'User Account Management' success events.
.AUTHOR
    Tomar Mickey
#>

auditpol /set /subcategory:"User Account Management" /success:enable
