function Relatorio-Bateria {
    powercfg /batteryreport /output "$RunDir\battery-report.html"
    Write-Host "✔ Relatório de bateria gerado"
    Pause
}
