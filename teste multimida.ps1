function Teste-Multimidia {
    Write-Host "🔊 Teste de áudio"
    Start-Process ms-settings:sound
    Pause

    Write-Host "🎤 Teste de microfone"
    Start-Process ms-settings:sound
    Pause

    Write-Host "📷 Teste de câmera"
    Start-Process microsoft.windows.camera:
    Pause
}
