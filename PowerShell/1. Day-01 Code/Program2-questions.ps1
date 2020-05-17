#Question A3: WAP to find out the square of a given number.

[int]$a = Read-Host -Prompt "Enter a number"
$b = $a * $a
$b

#Question A4: WAP to input a number and print its cube.

[int]$a = Read-Host -Prompt "Enter a number"
$b = $a * $a * $a
$b


#Question A7: WAP to input 4 integers a, b, c, d and check that 
#the equation a3 + b3 +c3 = d3 is satisfied or not.
[int]$a = Read-Host -Prompt "Enter a"
[int]$b = Read-Host -Prompt "Enter b"
[int]$c = Read-Host -Prompt "Enter c"
[int]$d = Read-Host -Prompt "Enter d"
 

If( ($d*$d*$d) -eq ($a*$a*$a) + ($b*$b*$b) + ($c*$c*$c) ){
 "Equation is satisfied"
 }else {

    "Equation condition not met"

 }
