#Custom Object  : is User defined struture or data type which can be used to stored or manage or manipulate the data 

#normal variable 
$server ="machine-1"
$server
$server.GetType()
$server.GetTypeCode()
$server.GetHashCode()


#object variable 
$custom_object = New-Object -TypeName psobject 
#$custom_object.GetType()

$custom_object | Add-Member -MemberType NoteProperty -Name IP -Value  "192.168.1.0"
$custom_object | Add-Member -MemberType NoteProperty -Name ComputerName -Value  "ABXHG01"
$custom_object | Add-Member -MemberType NoteProperty -Name CPU -Value  "2CORE"
$custom_object | Add-Member -MemberType NoteProperty -Name DiskSize -Value  "1TB"
$custom_object | Add-Member -MemberType NoteProperty -Name UserType -Value  1


$custom_object
$custom_object.CPU
$custom_object.IP


$ip = "192.168.1.1"
$nam  = "test"

function test{


}

test $ip ,$nam 
test $custom_object
$custom_object.UserType = 2

Switch ($custom_object.UserType) {

    1 {$adminPasswordStatus = 'ADMIN'}
     
    2 {$adminPasswordStatus = 'CLIENT'}

    3 {$adminPasswordStatus = 'USER'} 

    4 {$adminPasswordStatus = 'GUEST USER'}

    Default {$adminPasswordStatus = 'Unable to determine'}

}

$adminPasswordStatus


############ key and value pair (custome object)
$data = @{}  #dictionary  
 
$data.Add('ip','192.168.1.0')  #key,value 
$data.Add('computer','192.168.1.0')  #key 

$data['computer']
$data['ip']



#this is raman kumar sharma

$out = Get-Content "C:\Users\vkumar15\Desktop\users.txt"
#$out.GetType() #show data type
$newout = @()

#foreach($row in $out ){
for($i = 1  ; $i -lt $out.Count-1; $i++)  {
     #Write-Host  "$row"
     $newout += $out[$i] 
}

$newout

#proxy coding : and tools 
  

