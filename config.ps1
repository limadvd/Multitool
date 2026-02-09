$Global:BaseDir = "C:\Teste Rede"
$Global:Timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$Global:RunDir = "$BaseDir\Exec_$Timestamp"

New-Item -ItemType Directory -Path $RunDir -Force | Out-Null
