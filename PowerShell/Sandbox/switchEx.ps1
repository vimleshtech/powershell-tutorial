
# comments 
# ctrl + +   : increase the font
# ctrl + -   : decrease the font$
# F5         : run/execute all code
# F8         : run/execute selected code
# Powershell does allocate memory automaticlaly 
# Default data type is string when data will come/read from console or file 

$a= 1
$b= 2
$c  =  $a+$b 
Write-Host $c 

Write-Host "hi 1"
Write-Host "hi 2"
Write-Host "hi 3"
Write-Host "hi 4"

#input
[int]$a = Read-Host "enter data "
[int]$b =   Read-Host "enter data "

$c = $a+ $b 
Write-Host $c


#data type 
[int]$n =12233
[string]$name ="nitin sharma"
[bool]$b= true
[single]$sal = 5444.3333
[datetime]$d = Get-Date



[xml]$x = "<servers>
                    <server>computer1</server>
                    <server>server2</server>
                    <server>computer3</server>
                    <server>server3</server>
                    <server>shsgshgfhe444</server>
                    <server>shsgshgfhe444</server>
                    <server>shsgshgfhe444</server>
                    <server>shsgshgfhe444</server>
                    <server>shsgshgfhe444</server>
                    <server>shsgshgfhe444</server>
                    <server>shsgshgfhe444</server>
                    <server>shsgshgfhe444</server>
        </servers>"

##swith example 

[int]$should_be_run = 1 #yes 

while($should_be_run -eq 1)
{
            [int]$day = Read-Host "enter day # between 1 to 7 , and 0 for exit "

            switch($day){

                0{   
                    #break 
                    $should_be_run = 0 
                   }
                1{ 
                        Write-Host "server cannot be reboot today, you can submit support request for next day"
                  }
                2{
                        Write-Host "you need to rebook system if there is any issue"
                }
                3{
    
                        Write-Host "day 3"
                        break
                }
                4{
                        Write-Host "day 4"
                        break
                }
                5{
                        Write-Host "day 5"
                        break
                }
                6{
                        Write-Host "day 6"
                }
                7-10{
                        Write-Host "day 7"
                }
                default{
                            Write-Host "no match, plz try again with differnt input"
                }

            }



}