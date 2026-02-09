# Execução como admin
if (-not ([Security.Principal.WindowsPrincipal]
    [Security.Principal.WindowsIdentity]::GetCurrent()
).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "Execute como administrador"
    exit
}

# Puxar config
. "$PSScriptRoot\config.ps1"

# Importar módulos
Import-Module "$PSScriptRoot\modules\Rede.psm1" -Force
Import-Module "$PSScriptRoot\modules\Bateria.psm1" -Force
Import-Module "$PSScriptRoot\modules\Sistema.psm1" -Force
Import-Module "$PSScriptRoot\modules\Multimidia.psm1" -Force
Import-Module "$PSScriptRoot\modules\FastStartup.psm1" -Force
Import-Module "$PSScriptRoot\modules\Lenovo.psm1" -Force
Import-Module "$PSScriptRoot\modules\Decrapifier.psm1" -Force
