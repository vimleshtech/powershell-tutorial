for($k=1;$k -le 10; $k++){

    if($k % 2 -eq 0 )
    {
        Write-Host ''
        #break
        continue

    }

    Write-Host  -NoNewline  $k 
    Write-Host  -NoNewline  "," 

    
}

Write-Host "End of program"
Write-Host "Thank you!!!!"
