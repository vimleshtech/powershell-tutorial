#Question B31: WAP to print counting from 51 to 90.
for($i=51;$i -le 90; $i++)
{
    Write-Host $i 

}


for($i=1;$i -le 40; $i++)
{
    $d=$i+50
    Write-Host $d


}


#Question B32: WAP to find out the sum and average of all the numbers 
#within the given range.

$s = 0

for($i=10; $i -le 123; $i++)
{
    $s = $s+$i 

}
$s
$s/(123-10)+1



#(1)	1, -4, 7, -10……………-40**

for($in = 1 ; $in -le 40; $in=$in+3)
{
    if($in % 2 -eq 0)
    {
        Write-Host -NoNewline "-" $in 
    }
    else
    {
        Write-Host -NoNewline $in 
    }

    Write-Host -NoNewline ","
}



###(5)	(1)+(1+2)+(1+2+3)+(1+2+3+4)…………..up to n terms**

 Write-Host  ""

for($in = 1 ; $in -le 5; $in=$in+1)#row 
{
    Write-Host -NoNewline "("
    for($ij = 1 ; $ij -le $in; $ij=$ij+1) #col 
    {
        if ($ij -lt $in)
         {
            Write-Host -NoNewline "*"+ 
         }
         else
         {
           Write-Host -NoNewline "*"
         }
    }

    Write-Host -NoNewline ")+" 

}



()+()+()+()+()
1
12
123


$name = "raman","divya","rohit"

for($i=0; $i -lt 3 ; $i++)
{
    $name[$i]

}




