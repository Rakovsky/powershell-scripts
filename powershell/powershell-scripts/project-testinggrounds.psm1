function Join-String 
{
    $oneYe = 'oneYe'
    $twoYe = 'twoYe'
    # Write-Host $oneYe $twoYe
    $joinedYe = $oneYe + ' ' + $twoYe
    $joinedYe
}

function Get-BigArray
{
    $number = 100
    $printNumber = @(1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10,1,2)

    for ([int]$x = 19; $x -le $number; $x++) 
    {
        $printNumber[$x-19] = $x
    }
    $printNumber
}

$testString = 'a.test.file.2010.4231.TestTest.Test123.Ye-TEST.txt'
$testString.IndexOf("$testNumber")
("Hello world").Remove(5)