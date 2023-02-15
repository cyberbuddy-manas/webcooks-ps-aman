Clear-Host  #to clear the screen before executing the program

$array = 1,4,2,66,22,48,45,28,94,36,88,36,26,40,55,58,35,89,35,76,83,97     #initialised a array with a few numbers

foreach ($num in $array){   #using foreach to get every element of array one by one
    if ($num%2 -eq 0) {
        Write-Host $num " : is even"
    }
    else {
        Write-Host $num " : is odd"
    }
}