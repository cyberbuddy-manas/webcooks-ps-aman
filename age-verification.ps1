Clear-Host  #to clear the screen before executing the program

while ($true) {
    [int] $age = Read-Host -Prompt 'Please enter your age'

    if ($age -ge 18 -and $age -lt 102) {
        Write-Host "You are eligible for drinking."
    }
    elseif ($age -lt 18 -and $age -gt 0 ) {
        Write-Host "You are not eligible for drinking."
    }
    else {
        Write-Host "Please enter a valid age"
    }
}