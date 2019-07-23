function Rename-Item 
{
    # Temporary formatting
    # Write-Host 'Input file location:'
    # Write-Host '--------------------'
    # Write-Host 'Example: C:\workspace\powershell\trash'
    $itemLocation = Read-Host -Prompt 'Input location of files'

    $itemName = Get-ChildItem -Path $itemLocation -Name

    

    #New-Variable -Name 1 -Value $itemName[1 - 1]
    # $itemName.Length
    for ($x = 1; $x -le $itemName.Length; $x++) 
    {
        New-Variable -Name $x -Value $itemName[$x - 1]
    }
    
    # First
    ($1).Replace("."," ")

    # Second
    ($1).IndexOf("1","2")

    # Temporary formatting
    Write-Host ''
    Write-Host '--------------------'
    $1
    $2
    $3
    $4
    $5
    Write-Host '--------------------'
    Write-Host ''
}