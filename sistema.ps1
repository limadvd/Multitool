function Info-Sistema {
    Get-ComputerInfo |
        Select OsName, OsVersion, WindowsBuildLabEx |
        Out-File "$RunDir\system_os.txt"

    Get-CimInstance Win32_Processor |
        Select Name, NumberOfCores |
        Out-File "$RunDir\cpu.txt"

    Get-CimInstance Win32_PhysicalMemory |
        Measure-Object Capacity -Sum |
        % { "RAM Total (GB): {0:N2}" -f ($_.Sum / 1GB) } |
        Out-File "$RunDir\ram.txt"

    Get-PSDrive C |
        Select Used, Free |
        Out-File "$RunDir\disk.txt"

    netsh wlan show drivers > "$RunDir\wifi_driver.txt"

    Write-Host "✔ Informações do sistema coletadas"
    Pause
}
