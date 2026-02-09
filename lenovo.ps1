function Funcoes-Lenovo {
    $m = (Get-CimInstance Win32_ComputerSystem).Manufacturer
    if ($m -notmatch "Lenovo") {
        Write-Host "❌ Não é Lenovo"
    } else {
        Get-AppxPackage *Lenovo* > "$RunDir\lenovo_apps.txt"
        Write-Host "✔ Lenovo detectado"
    }
    Pause
}
