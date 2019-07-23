function Rename-Item-Test
{
    # Temporary formatting
    # Write-Host 'Input file location:'
    # Write-Host '--------------------'
    # Write-Host 'Example: C:\workspace\powershell\trash'

    # Declare and define string variable that stores location of files that should be renamed
    $itemLocation = Read-Host -Prompt 'Input location of files'

    # Store file names from previously specified location of files
    $itemName = Get-ChildItem -Path $itemLocation -Name

    # Create a whitespace for easier formatting
    Write-Host ''
    
    # Print all filenames to check that collection was successful
    $itemName

    # Create a whitespace for easier formatting
    Write-Host ''

    #New-Variable -Name 1 -Value $itemName[1 - 1]
    # $itemName.Length

    # Most likely a function to turn string into array
    # the reason I want this is it makes it easier to scan through the file names finding specific characters and replacing them
    for ($x = 1; $x -le $itemName.Length; $x++) 
    {
        New-Variable -Name $x -Value $itemName[$x - 1]
    }
}