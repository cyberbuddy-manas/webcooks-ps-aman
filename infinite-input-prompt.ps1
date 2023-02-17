Clear-Host

while (([int]$num = Read-Host -prompt "Enter a number") -ne 60) {
    if ($num%5 -eq 0) {
        Write-Host $num " is divisible by 5"
    } elseif ($num%11 -eq 0) {
        write-Host  $num " is divisible by 11"
    } else {
        write-Host  $num " is not divisible by 5 and 11"
    }
}

Write-Host $num "is a global variable"