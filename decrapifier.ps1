function Decrapifier {
    $apps = @(
        "Microsoft.BingNews",
        "Microsoft.XboxApp",
        "Microsoft.GetHelp"
    )

    foreach ($a in $apps) {
        Get-AppxPackage -Name $a -AllUsers |
            Remove-AppxPackage -ErrorAction SilentlyContinue
    }

    Write-Host "✔ Apps removidos"
    Pause
}
