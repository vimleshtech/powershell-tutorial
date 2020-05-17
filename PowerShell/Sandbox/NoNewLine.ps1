#no new line
Write-Host -NoNewline "test 1"
Write-Host -NoNewline "test 2"

##wait

for($i=1;$i -le 5; $i++){


Write-Host "$i"
Start-Sleep -s 5

}

#####

[int]$a = 49/10

$n = 49/10
$n = 49%10

[Math]::Round($n, 0)


