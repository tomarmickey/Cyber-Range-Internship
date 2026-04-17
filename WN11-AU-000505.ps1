<#
.SYNOPSIS
    Remediation for WN11-AU-000505 - Security Log Max Size.
.DESCRIPTION
    Sets the maximum size of the Security event log to 196608 KB per DISA STIG requirements.
.AUTHOR
    Tomar Mickey
#>

$path = "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Security"
if (-not (Test-Path $path)) {
    New-Item -Path $path -Force
}
New-ItemProperty -Path $path -Name "MaxSize" -Value 196608 -PropertyType DWord -Force
