# Declaring and defining directories
[string]$filesDirectory = 'C:\workspace\powershell\2992776 Hjälp\workspace\Files'
# [string]$filesDirectory = $PSScriptRoot\Files
[string]$user = $env:UserName
[string]$templateDirectory = "C:\Users\$user\AppData\Roaming\Microsoft\Templates"

# Move templates from $filesDirectory to $defaultTemplateDirectory
Copy-Item -Path $filesDirectory\* -Destination $templateDirectory

# Run Detection-Method.ps1
& "C:\workspace\powershell\2992776 Hjälp\workspace\Detection-Method.ps1"