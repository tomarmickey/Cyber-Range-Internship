<#
.SYNOPSIS
    Remediation for WN11-AU-000510 - System Log Max Size.
.DESCRIPTION
    Sets the maximum size of the System event log to 32768 KB per DISA STIG requirements.
.AUTHOR
    Tomar Mickey
#>

$path = "HKLM:\Software\Policies\Microsoft\Windows\EventLog\System"
if (-not (Test-Path $path)) {
    New-Item -Path $path -Force
}
New-ItemProperty -Path $path -Name "MaxSize" -Value 32768 -PropertyType DWord -Force
