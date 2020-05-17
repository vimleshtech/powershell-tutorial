
#while 
$i =1 #init 
while ($i -le 10){ #condition 

        Write-Host "$i"
        $i = $i +1 
}


#in reverse order
$i =10
while ($i -gt 1){

    Write-Host "$i"
    $i = $i -1


}


#multiple steps

$i =2
while($i -le 10 ){

    Write-Host "$i"
    $i = $i+2 
}



###for 
for($i=1; $i -le 10; $i++){
    
    Write-Host "$i"
}


###foreach 

$out = ("item1", "item3","item4","item5")
$out[0] #first 
$out[1] #2nd element 

foreach($item in $out){

    Write-Host "$item"

}


###

foreach($item in $out){

    if($item -ne "item3"){
    
            Write-Host "$item"

    }

}


##File Hadling
Import-Csv "C:\Users\vkumar15\Desktop\computers.csv" | ForEach-Object{

    $_.COmputer
  
}

##### wap to read data from .csv and get count of all even and odd numebers 

$i=import-csv "C:\Users\vkumar15\Desktop\Numbers.csv"

foreach ( $num in $i )
{
if ($num/2 -eq 0){
Write-Host "$num is even number"
}
else{
Write-Host "$num is odd number"
}
}

======================
import-csv "C:\Users\vkumar15\Desktop\Numbers.csv" | ForEach-Object {
if($_.Numbers/2 -eq 0){
Write-Host "$_. even number"
}
}

gi


