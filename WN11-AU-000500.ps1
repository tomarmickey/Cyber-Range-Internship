<#
.SYNOPSIS
    Remediation for WN11-AU-000500 - Application Log Max Size.
.DESCRIPTION
    Sets the maximum size of the Application event log to 32768 KB (32MB) per DISA STIG requirements.
.AUTHOR
    Tomar Mickey
#>

$path = "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Application"
if (!(Test-Path $path)) { New-Item -Path $path -Force }
Set-ItemProperty -Path $path -Name "MaxSize" -Value 32768 -Type DWord
