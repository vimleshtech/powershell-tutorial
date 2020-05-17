#Breakpoint : This topic is import to indentify the issue in source code 

#shortcut keys: F5         - to run or start debuging
#               F9         - slect the line and press F9 for enable or disable breakpoint 
#               F11        - step in : go to next line    (S and press ENTER)
#               C  + Enter - jump to next break point
#               shift + F5 - to terminate the beak point 
#How to step over, step into, and step out while debugging


$user_name ="alpha"# Read-Host "enter user "
$pass = "beta" #Read-Host "enter passcode "

# ... User 

[int]$a = 11 
[int]$b = 11 
[int]$c = 11 
[int]$d = 11 

[int]$out = $a + $b + $c +$d 


Write-Host "Output is $out"



