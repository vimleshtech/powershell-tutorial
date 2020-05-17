#Exception Handling or Error Handling
#Exception : is runtime error which may or may not occur 
#Handling  : tackle the error when this will occur 

#there are following inbuilt keywords to tackle the errors 
#-try         : expression / logic shoule be written in this block 
#-catch       : is handle, catch should be written right after the try block 
#-throw       : raise the when condition will match / user defined error
#-finally     : is optional block which may or may not implemented, however this block will execute always if present 

#Advantage of exception/error handling 
#-Show custom/user friendly error 
#-prevent the code from failure due to few error 
#-store the error log 

#Example # 1
[int]$n = Read-Host "enter number "
[int]$d = Read-Host "enter number "
[int]$out  = 0

try{

    $out = $n / $d   ##jump to catch block if error occur 
    #Write-Host "output is $out"

}
catch{
            Write-Host "there is failure due invalid input or data "

}
finally{

    Write-Host "output is $out"

}

#wap to run the script till the time correct result will not come 
while($true){

               

                try{

                    [int]$n = Read-Host "enter number "
                    [int]$d = Read-Host "enter number "
                    [int]$out  = 0

                    if( $d -lt 0){

                            $error = [System.Exception]::new("divisor cannot be less than 0") 
                            throw $error
                    }
                    $out = $n / $d   ##jump to catch block if error occur 
                    Write-Host "output is $out"

                    break

                }
                catch{
                            Write-Host "Input is incorrect , plz try again!!!! "

                }

}



#
emp.txt
=============
id,name,gender,salary,country
11,raman,male,333444,india
22,jatin,male,na,us
33,nitisha,female,55555,us
55,nitin,male,5555,aus
66,kshtiz,male,da,india




output:

male  - 4 - 5543333
female - 1 - 754444

all failed record should be stored in seperate file as error log  "log.txt"
---
there is error in line no. 3, 6

