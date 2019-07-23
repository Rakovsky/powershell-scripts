function ye {
    Write-Host "ye"
}

function Test
{
    $x = 11
    if ($x -eq 10)
    {
        Write-Host 'ye'
    }
    else 
    {
        Write-Host 'na'
    }
}

function Get-Username 
{
    $username = $env:USERNAME
    Write-Host -ForegroundColor Red $env:USERNAME
}

function Make-Files 
{
    $usernumber = $env:USERNAME -replace 'AA',''
    for ($x = 1; $x -le 3; $x++) 
    {
        New-Item -ItemType File -Path C:\Users\aa571\workspace\powershell\course\$x.txt
    }
}

# Beast mode
# Task One
function Start-Countdown
{
    # Declare and define startTime as an int
    $startTime = 10
    # Declare and define countDownTime as startTime
    $countDownAmount = $startTime

    # Loop that counts down
    for ($x = 1; $x -le $countDownAmount; $x++)
    {
        $startTime
        Start-Sleep -Seconds 1
        $startTime--
    }       
}

# Task Two
function Reverse-String
{
    $string = Read-Host -Prompt 'Input text to reverse'
    $reverseString = $string.ToCharArray()
    [array]::Reverse($reverseString)
    $string = -join($reverseString)
    $string
}

# Task Three
function Convert-TTS
{
    $text = Read-Host -Prompt 'Input text to be spoken'
    Add-Type -AssemblyName System.Speech
    $speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
    $speak.Speak($text)
}

# Task Three with Mac support (terrible execution time)
function Convert-TTSMacSupport
{
    $text = Read-Host -Prompt 'Input text to be spoken'
    Add-Type -AssemblyName System.Speech
    $speak = New-Object System.Speech.Synthesis.SpeechSynthesizer

    $isItWindows = Get-ComputerInfo *WindowsProductName* | Out-String
    if ($isItWindows -like '*Windows *') 
    {
        $speak.Speak($text)
    } else {
        say($text)
    }
}

# Task Four
# Multiplier starts with one
# Multiplier becomes previous output

function Run-NotRecursive
{
    $multiplier = 1
    for ($y = 2; $y -le 5; $y++)
    {
        $x = $y
        $x *= $multiplier
        $multiplier = $x
        $x
    }
}

$m = 1
$y = 2
function Run-Recursive
{
    if ($n -eq 120)
    {
        exit
    }
    else
    {
        $n = $y
        $y++
        $n *= $m
        $m = $n
        $n
        Run-Recursive
    }
}

function Shutdown-Windows
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