# CREATE FOLDER
New-Item -Path "C:\Users\vkumar15\Desktop\PowerShell\TestFolder" -ItemType Directory

#see list of directory and files in current folder 
dir 

#CREATE FILE 
New-Item -Path "C:\Users\vkumar15\Desktop\PowerShell\TestFolder\Hello.txt" -ItemType File

#COPY FOLDER
Copy-Item "C:\Users\vkumar15\Desktop\PowerShell\TestFolder" "C:\Users\vkumar15\Desktop\PowerShell\TestFolder1"
#OR
Copy-Item  "C:\Users\vkumar15\Desktop\PowerShell\TestFolder" -Destination "C:\Users\vkumar15\Desktop\PowerShell\TestFolder2"


#COPY FOLDER WITH DATA  OR RECURSIVE (WITH INNER DATA)
Copy-Item -Recurse  "C:\Users\vkumar15\Desktop\PowerShell\TestFolder" -Destination "C:\Users\vkumar15\Desktop\PowerShell\TestFolder3"


#COPY ITEM  / FILE 
Copy-Item "C:\Users\vkumar15\Desktop\PowerShell\TestFolder\Hello.txt" "C:\Users\vkumar15\Desktop\PowerShell\TestFolder1\test.txt"


#copy all with matching pattern 
Copy-Item -Filter "*.txt" -Path "C:\Users\vkumar15\Desktop\PowerShell\TestFolder\" -Recurse  -Destination "C:\Users\vkumar15\Desktop\PowerShell\TestFolder2\"


#remove folder
Remove-Item "C:\Users\vkumar15\Desktop\PowerShell\TestFolder3"

#with recursive
Remove-Item -Recurse "C:\Users\vkumar15\Desktop\PowerShell\TestFolder2"



#read file data 
Get-Content "C:\Users\vkumar15\Desktop\PowerShell\TestFolder\a.txt"

#get length
(Get-Content "C:\Users\vkumar15\Desktop\PowerShell\TestFolder\a.txt").Length

#check 
Test-Path "C:\Users\vkumar15\Desktop\PowerShell\TestFolder\xyz.txt"

