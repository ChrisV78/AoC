$mass = get-content ./input.txt
$total = 0
$total2 = 0
$uitkomst = 0
foreach ($m in $mass) {
    $calc = ([Math]::Truncate($m / 3)) - 2
    $subcalc = 0
    $subtotal = 0
    $ownmass = $calc
    while ($subcalc -ge 0) {
        $subcalc = ([Math]::Truncate($ownmass / 3)) - 2
        write-output $subcalc
        if ($subcalc -lt 0) { }
        else {
            $subtotal += $subcalc
            $ownmass = $subcalc
        }
    }
    $total += $calc
    $total2 += $subtotal
    $uitkomst = $total + $total2
}
write-output $uitkomst

