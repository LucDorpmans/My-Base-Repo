# GetMy-Base-Scripts.ps1
Function Get-MyScript { Param( [string]$AScript,[switch]$EditFile = $False, 
							   [string]$SPath = "$env:USERPROFILE\Downloads\")
			Invoke-Webrequest -Uri "https://raw.githubusercontent.com/LucDorpmans/My-Base-Repo/main/$AScript"  -Outfile "$SPath$AScript" 
If ($EditFile) { PSEdit ("$SPath$AScript" )} }

Get-MyScript "EdgeMSI-Download-Only-Complete.ps1"  -EditFile
Get-MyScript "Edge-InstallOnly.ps1"  -EditFile
Get-MyScript "PowerShell-Core-7-Download+Install.ps1" -EditFile
Get-MyScript "Chrome-Download+Run-Installer.ps1"
Get-MyScript "WAC-Download+Install.ps1"

# Get Install-VSCode script"
Invoke-Webrequest -Uri "https://raw.githubusercontent.com/PowerShell/vscode-powershell/master/scripts/Install-VSCode.ps1" -Outfile "$env:USERPROFILE\Downloads\Install-VSCode.ps1"
PSEdit  ("$env:USERPROFILE\Downloads\Install-VSCode.ps1")
