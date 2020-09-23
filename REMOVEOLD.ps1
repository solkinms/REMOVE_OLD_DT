#All out in file start
Start-Transcript -Path D:\DELDT.txt
#Variables
#-15 days
$date = (Get-Date).AddDays(-15)
$for_delete = Get-ChildItem -Path "\\share\backups\DT\" -Include "*.dt" -Recurse
Get-ChildItem -Recurse -Path $for_delete | Where-Object -Property CreationTime -lt $date | Remove-Item
Stop-Transcript
