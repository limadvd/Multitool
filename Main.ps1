# ================================
# MULTI-TOOL TI - MAIN
# ================================

# ---- Admin check ----
if (-not ([Security.Principal.WindowsPrincipal]
    [Security.Principal.WindowsIdentity]::GetCurrent()
).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Host "Execute como Administrador" -ForegroundColor Red
    Pause
    exit
}

# ---- Import config ----
. "$PSScriptRoot\config.ps1"

# ---- Import módulos ----
. "$PSScriptRoot\teste rede.ps1"
. "$PSScriptRoot\bateria.ps1"
. "$PSScriptRoot\sistema.ps1"
. "$PSScriptRoot\teste multimida.ps1"
. "$PSScriptRoot\lenovo.ps1"
. "$PSScriptRoot\decrapifier.ps1"

# ================================
# MENU
# ================================
function Mostrar-Menu {
    Clear-Host
    Write-Host "==============================="
    Write-Host " MULTI-TOOL – TESTE CORPORATIVO "
    Write-Host "==============================="
    Write-Host "1 - Teste de Rede / Wi-Fi"
    Write-Host "2 - Relatório de Bateria"
    Write-Host "3 - Informações do Sistema"
    Write-Host "4 - Teste Multimídia"
    Write-Host "5 - Fast Startup (ON/OFF)"
    Write-Host "6 - Funções Lenovo"
    Write-Host "7 - Decrapifier"
    Write-Host "0 - Sair"
}

# ================================
# LOOP PRINCIPAL
# ================================
do {
    Mostrar-Menu
    $op = Read-Host "Escolha"

    switch ($op) {
        "1" { Teste-Rede }
        "2" { Relatorio-Bateria }
        "3" { Info-Sistema }
        "4" { Teste-Multimidia }
        "6" { Funcoes-Lenovo }
        "7" { Decrapifier }
    }

} while ($op -ne "0")
