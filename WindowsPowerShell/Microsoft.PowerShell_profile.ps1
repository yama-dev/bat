# WindowsPowerShell

# change tilte
$a = (Get-Host).UI.RawUI 
$a.WindowTitle = "Powershell"

Set-Location "D:\works"

Write-Host "policy -> " (Get-ExecutionPolicy) -ForegroundColor "Gray"

function rmrf {
  # This is an equivalent command of "rm -rf" in Unix-like systems.
  Param(
    [Parameter(Mandatory=$true)]
    [string]$Target
  )
  Remove-Item -Recurse -Force $Target
}

