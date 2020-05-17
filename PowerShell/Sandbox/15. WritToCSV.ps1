
$computerlist =@('LH7U05CG7300QJQ','LH7U05CG7300QJZ','LH7U05CG7300QJM','LH7U05CG7300QJM')

$results = @()  #declare empty / blank array 

foreach ($computer in $computerlist) {
    
    if((Test-Connection -Cn $computer -BufferSize 16 -Count 1 -ea 0 -quiet))
    {
        #foreach ($file in $REMOVE) {

            #Remove-Item "\\$computer\$DESTINATION\$file" -Recurse

            Copy-Item C:\Users\vkumar15\Desktop\Blocking\users.xml "C:\Users\vkumar15\Desktop\Blocking\nf\"            
        #}
    } else {

        $details = @{            
                Date             = get-date              
                ComputerName     = $Computer                 
                #Destination      = $Destination 
     }        
                           
        $results += New-Object PSObject -Property $details  
    }
}
$results | export-csv -Path C:\Users\vkumar15\Desktop\Blocking\temp_csv.csv -NoTypeInformation
    