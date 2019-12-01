$mass = get-content ./input.txt
$total = 0
foreach ($m in $mass) {
    $calc = ([Math]::Truncate($m / 3)) - 2
    $total += $calc
}
write-output $total


[math].GetMethods() | Select -Property Name -Unique