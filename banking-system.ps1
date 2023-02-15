Clear-Host  #to clear the screen before executing the program

Write-Host  "1 : Submit some amount (min: 100)"
Write-Host  "2 : Withdraw some amount"
Write-Host  "3 : Check your balance"
Write-Host  "4 : Exit"

$global:amount = 0

function submit {
    param (
        $submit
    )
    $global:amount = $global:amount + $submit
    Write-Host $submit "has been credited to your account :)"
    Write-Host "Your total balance is" $global:amount
}

function withdraw {
    param (
        $withdraw
    )
    $global:amount = $global:amount - $withdraw
    Write-Host $withdraw "has been debited from your account :("
    Write-Host "Your total balance is" $global:amount
}

function balance {
    Write-Host "Your total balance is" $global:amount
}

while(($i = Read-Host -Prompt "`nWhat would you like to do") -ne "4"){
    switch($i){
        "1" {submit -submit (Read-Host -Prompt 'Input the amount')}
        "2" {withdraw -withdraw (Read-Host -Prompt 'Input the amount')}
        "3" {balance}
        "4" {}
        default {"Please choose correct option"}
    }
}