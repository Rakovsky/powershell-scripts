function Rename-A-Item
{
    # specify filelocation and write item names to variable
    # -Name for only getting the name of the file
    # -Recurse for traversing directories
    # -File for only getting the filename not e.g. move\moviename.mp4
    $ItemLocation = 'C:\workspace\powershell\test'
    $itemName = @(Get-ChildItem -Path $ItemLocation -Name -Recurse -File)



    # print
    Write-Host ''
    $itemName
    Write-Host ''



    # checks variable for specified numbers e.g. 20
    # stores location of character in string
    # trims off everything after and at location stored
    $characterFilter = 20
    $characterLocation = $itemName.IndexOf("$characterFilter")
    $newItemName = ($itemName).Remove($characterLocation)

    

    # print
    Write-Host ''
    $newItemName
    Write-Host ''



    $newItemName = $newItemName.Replace("."," ")



    # print
    Write-Host ''
    $newItemName
    Write-Host ''



    # check variable character length
    $newItemName.Length
    


    # trim off extra space
    $newItemName = $newItemName.TrimEnd()
    


    # check variable character length after trim
    $newItemName.Length
}