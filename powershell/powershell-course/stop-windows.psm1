function Stop-Windows
{
    $time = Read-Host -Prompt 'Time until shutdown'
    shutdown -s -t $time
    Write-Host -ForegroundColor Red 'Shutdown will commence in' $time 'seconds'
}

function Stop-Shutdown
{
    shutdown -a
    Write-Host -ForegroundColor Red 'Shutdown has been cancelled'
}