Clear-Host

$hello = Read-Host -Prompt "How many numbers"

for ($i = 0; $i -lt $hello; $i++) {
    $arr += @(Read-Host -prompt "Enter a number")
}

$store = 0

for ($amnt = 0; $amnt -lt $arr.Count; $amnt+=1) {
    $store += $arr[$amnt]
}
Write-Host $store