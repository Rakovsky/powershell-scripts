function Make-Files 
{
    $fileAmount = Read-Host -Prompt 'Input amount of files to be created'

    Write-Host ''
    Write-Host 'Input file location:'
    Write-Host '--------------------'
    Write-Host 'Example: C:\workspace\powershell\trash'
    $fileLocation = Read-Host -Prompt 'Input location of files'
    New-Item -ItemType Directory -Path $fileLocation

    for ($x = 1; $x -le $fileAmount; $x++) 
    {
        New-Item -ItemType File -Path ($fileLocation + '\' + $x + '.txt') 
    }
}

function Remove-Files 
{
    $sure = Read-Host -Prompt 'If you are certain you want to yeet files out of existence, enter y'
    
    if ($sure -eq 'y') 
    {
        Remove-Item -Path (Read-Host -Prompt 'Path') -Recurse
    }
    else 
    {
        Write-Host 'Exiting'
    }
}