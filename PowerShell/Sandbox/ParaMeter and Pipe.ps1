Get-Process 

Function Add-Numbers($one, $two) {
    $one + $two
}

Add-Numbers 11 22


function Get-SmallFiles {
    
  Param($Size,$Alpha)
  $Size
  $Alpha
  Get-ChildItem $HOME | Where-Object {
    $_.Length -lt $Size -and !$_.PSIsContainer
  }
}


Get-SmallFiles -Size 50 -Alpha 100

#To define a default value for a parameter,
function Get-SmallFiles ($Size = 100) {
  Get-ChildItem $HOME | Where-Object {
    $_.Length -lt $Size -and !$_.PSIsContainer
  }
}

Get-SmallFiles 
Get-SmallFiles  -Size 10

##argument 
function Get-Extension {
  $name = $args[0] + ".txt"
  $name
}

Get-Extension myTextFile


##switch
function Switch-Item {
  param ([switch]$on)
  if ($on) { "Switch on" }
  else { "Switch off" }
}

Switch-Item -off
Switch-Item -on:$false
Switch-Item -on:$true




###pipe with 
Get-Process notepad | Stop-Process


##
Get-ChildItem -Path C:\Users\vkumar15\Desktop\ScanAdmin\*.* | Where-Object {$_.length -gt 10000} |
Sort-Object -Property length | Format-Table -Property name, length


#start services
Get-Service wmi | Start-Service


#sort
Get-Process | Sort-Object -Property handles


#format table
Get-Service | Format-Table -Property name, dependentservices

#or
$services = Get-Service
Format-Table -InputObject $services -Property name, dependentservices


#
function test {
    Param(
        [Parameter(Mandatory = $true,
        HelpMessage = "Enter one or more computer names separated by commas.")]
        [String[]]
        $ComputerName
    )
    $ComputerName


}

test -ComputerName "test1,test2"

#alias name
function test2 {
Param(
    [Parameter(Mandatory = $true)]
    [Alias("CN", "MachineName")]
    [String[]]
    $ComputerName
)
    $ComputerName

}

test2 -CN "1"
test2 -MachineName "1"



##
function test3{
    Param(
    [Parameter(Mandatory = $true)]
    [ValidatePattern("[0-9][0-9][0-9][0-9]")]
    [String[]]
        $ComputerName
    )
    $ComputerName
}

test3 -ComputerName "111$"