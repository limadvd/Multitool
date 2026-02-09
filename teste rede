function Teste-Rede {
    ipconfig /all > "$RunDir\ipconfig.txt"
    netsh wlan show interfaces > "$RunDir\wifi_interfaces.txt"

    Test-Connection 8.8.8.8 -Count 10 |
        Select Address, ResponseTime |
        Out-File "$RunDir\ping_google.txt"

    netsh wlan show wlanreport | Out-Null
    Copy-Item "$env:ProgramData\Microsoft\Windows\WlanReport\wlan-report-latest.html" `
        "$RunDir\wlan-report.html" -Force

    Write-Host "✔ Teste de rede concluído"
    Pause
}
