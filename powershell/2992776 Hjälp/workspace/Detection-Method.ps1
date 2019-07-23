function DetectionMethodOutput
{
    Add-Type -assembly System.Windows.Forms

    $main_form = New-Object System.Windows.Forms.Form

    $main_form.Text ='Failed'
    $main_form.Width = 300
    $main_form.Height = 100

    $main_form.AutoSize = $true

    $Label = New-Object System.Windows.Forms.Label
    $Label.Text = "Deploy Application failed"
    $Label.Location  = New-Object System.Drawing.Point(60,20)
    $Label.AutoSize = $true
    $main_form.Controls.Add($Label)

    $main_form.ShowDialog()
}

[string]$user = $env:UserName
[string]$defaultTemplateDirectory = "C:\Users\$user\AppData\Roaming\Microsoft\Templates"

# Checks if templateDirectory folder contains templates
[string]$templateDirectoryStatus = Test-Path $defaultTemplateDirectory\*Verdane*.dotx

if ($templateDirectoryStatus -eq 'true') 
{
    DetectionMethodOutput
}