# WindowsPowerShell

# change tilte
$a = (Get-Host).UI.RawUI 
$a.WindowTitle = "Powershell"

# set directory
$desktop = "C:\Users\kirksville\Desktop"
$work = "C:\Users\kirksville\Desktop\_work"
$storage = "C:\Users\kirksville\Desktop\_storage"

Set-Location "D:\works"

Write-Host "policy -> " (Get-ExecutionPolicy) -ForegroundColor "Gray"

# goto desktop
function desktop(){
  cd $desktop
}

# goto working-directory
function work(){
  cd $work
}

# make tree-file
function maketree(){
  $_path = (Convert-Path .)
  $_date = Get-Date -Format "yyyy-MMdd-HHmmss"
  tree $_path /F > ../tree_$_date.md
}

function rmrf {
  # This is an equivalent command of "rm -rf" in Unix-like systems.
  Param(
    [Parameter(Mandatory=$true)]
    [string]$Target
  )
  Remove-Item -Recurse -Force $Target
}

