Clear-Host

$arr = 22, 56, 789, 54, 972, 34
$store = 0

for ($amnt = 0; $amnt -lt $arr.Count; $amnt+=1) {
    $store += $arr[$amnt]
}
Write-Host $store