# WindowsPowerShell
# PROFILEファイル

# ディレクトリの設定
$desktop = "C:\Users\[user-name]\Desktop"
$work = "C:\Users\[user-name]\Desktop\_work"
$storage = "C:\Users\[user-name]\Desktop\_storage"

# goto desktop
function desktop(){
  cd $desktop
}

# goto working-directry
function work(){
  cd $work
}

# make tree-file
function maketree(){
  $_path = (Convert-Path .)
  $_date = Get-Date -Format "yyyy-MMdd-HHmmss"
  tree $_path /F > ../tree_$_date.md
}
