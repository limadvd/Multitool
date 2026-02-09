if (-not ([Security.Principal.WindowsPrincipal]
    [Security.Principal.WindowsIdentity]::GetCurrent()
).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "❌ Execute como Administrador" -ForegroundColor Red
    Pause
    exit
}

$BaseDir = "C:\Teste Rede"
New-Item -ItemType Directory -Path $BaseDir -Force | Out-Null
$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$RunDir = "$BaseDir\Exec_$timestamp"
New-Item -ItemType Directory -Path $RunDir -Force | Out-Null
