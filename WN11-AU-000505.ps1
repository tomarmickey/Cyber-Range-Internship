$path = "HKLM:\Software\Policies\Microsoft\Windows\EventLog\Security"
if (-not (Test-Path $path)) {
    New-Item -Path $path -Force
}
# Setting to 1024000 to match your Tenable audit requirement
New-ItemProperty -Path $path -Name "MaxSize" -Value 1024000 -PropertyType DWord -Force

# Restart the service to ensure the system recognizes the change
Restart-Service -Name EventLog -Force
