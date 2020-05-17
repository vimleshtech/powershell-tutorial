
# Comment line 
# We can save powershell code with .ps1 extension 
# F5 : to run/execute the entire code
# F8 : to run selection 
# powershell is case sensetive (default is not case sensetive)

#declare the variable 
[int]$n1  = Read-Host "enter data "  #default colon 
[int]$n2  = Read-Host "enter data :"

#operation 
[int]$n  = $n1 + $n2 

#Oputput
$n 
Write-Host "output is $n"  #  Write-Host is function , this will one   argument (recommanded)
Write-Host "output is ",$n  #  Write-Host is function , this will two arguments


#
cd "C:\Users\vkumar15\Desktop\Blocking"
.\Lession-01-Basic.ps1

#& Lession-01-Basic.ps1

#Operators

### convert to int (auto type casting/implicit casting)
$n  =12
[int]$o = $n/10  #int , convert to int 


#% REMINDER
$n  =12
[int]$o = $n%10  #2


##ASSIGNMENT OPERATOR
$n =1
$n += 1  # or $n = $n +1



##
$n=1
$n++  #post incrementer

##
++$n   #pre 




## loop Example
#while 
$i =1 
while ($i -le 10 ){

    Write-Host $i
    $i++
}

#print in rev
$i =10
while ($i -ge 1 ){

    Write-Host $i
    $i--
}

#print all odd numbers between 1 to 30 
$i =1 
while ($i -le 30 ){

    Write-Host $i
    $i+=2
}
########################################################################
#wap to get sum of all even and odd numbers between two given number 
########################################################################
[int]$n1 = Read-Host "Enter first no "
[int]$n2 = Read-Host "Enter first no "

[int]$se =0 #default vallue
[int]$so =0 #default vallue

while($n1 -le $n2){

    if($n1 % 2 -eq 0){ #if even no  

            $se +=$n1 #12 
    }
    else{

        $so +=$n1  #11 +13 = 
    }
    $n1++
}

Write-Host "Sum of all even no $se "
Write-Host "Sum of all odd no $so "

##do while #will execute at least once/first execute then check the condition 
[int]$i=1
do{
    
    Write-Host "$i"
    $i++

}while($i -lt 1) 

##do until 
[int]$i  =1
do{
    Write-Host "$i"

    $i++
    if($i -gt 10){
        
            break    
    }

}until($i -lt 1)


#####for loop
for($i=1;$i -le 10; $i++){

    Write-Host "$i"
}


### break and continue
## break : to terminate the loop 
## continue : to skip the current iteration and resume from next


for($i=1;$i -le 10; $i++){
        
    if($i%3 -eq 0){
        break   #if condition is match, then exit
    }

    Write-Host "$i"
}


##continue 


for($i=1;$i -le 10; $i++){
        
    if($i%3 -eq 0){
        continue   #if condition is match, then exit
    }

    Write-Host "$i"
}

###########################
#Function : is set of command or instructions which is reusable 
#->Reusability of source code
#->Support to modular programing or coding, large/complex modules can be written in small set of unit
#->Esay to manage the source code 
#There are following types of function 
#i. No argument with no return 
#ii. No argument with return 
#iii. Argument with no return 
#iv. Argument with return 
#other type : Recursive function 
#           : Object/Custom 
###########################

#i. No argument with no return 
function add{

        Write-Host "This is test function, which will not tage argument"
}
#ii. No argument with return 
function get-data{

        [int]$data = Read-Host "enter data "
        return $data
}
#iii. Argument with no return
function add-num{
        param($value)
        $out = $value+100
        Write-Host "sum of numebrs $out"

}

#iv. Argument with return 
function sub-num{
        param($value)
        $out = $value-100
        return $out 
        

}


#call/invoke  to function 
add
$out = get-data
$Out+100 


#call with argument 
add-num 10

##
$n = sub-num 200
$n*100 

##access one file function in another file  
###wap to convert given no in word   #80  =  eighty  
$a = ("","one","two","three" ... 19)
$b =  ("","","twenty","thirty",... 90")




$n = 91
[int]$n1 = $n/10  #9
[int]$n2 = $n%10   # 1
