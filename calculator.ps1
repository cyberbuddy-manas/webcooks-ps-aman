Clear-Host #will clear the host

Write-Host "1. Addition"
Write-Host "2. Subtraction"
Write-Host "3. Multiplication"
Write-Host "4. Division"

function addition {
    param (
        [int]$a, [int]$b
    )
    return $a + $b    
}

function subtraction {
    param (
        [int]$a, [int]$b
    )
    return $a - $b
}

function multiplication {
    param (
        [int]$a, [int]$b
    )
    return $a * $b
}

function division {
    param (
        [int]$a, [int]$b
    )
    return $a / $b    
}

[int]$num1 = Read-Host -Prompt "Select an Option"

switch ($num1) {
    1 { Write-Host (addition -a (Read-Host -prompt "Enter a number") -b (Read-Host -prompt "Enter a number")) }
    2 { Write-Host (subtraction -a (Read-Host -prompt "Enter a number") -b (Read-Host -prompt "Enter a number")) }
    3 { Write-Host (multiplication -a (Read-Host -prompt "Enter a number") -b (Read-Host -prompt "Enter a number")) }
    4 { Write-Host (division -a (Read-Host -prompt "Enter a number") -b (Read-Host -prompt "Enter a number")) }
    Default {
        Write-Host "Incorrect Option"
    }
}