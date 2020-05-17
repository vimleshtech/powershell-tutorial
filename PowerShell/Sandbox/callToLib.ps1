
. "C:\Users\vkumar15\Documents\Training\Training\1. PowerShell\PowerShell\Sandbox\CalcModuleps1.ps1"

add-numbers 11 22

function Get-SmallFiles {
    
  Param($Size,$Alpha)
  $Size
  $Alpha 
}


Get-SmallFiles 11 22 33
Get-SmallFiles -Size 111 -Alpha 6666



#default argument

#To define a default value for a parameter,
function Get-SmallFiles ($Size = 100) {

  Get-ChildItem $HOME | Where-Object {
    $_.Length -lt $Size -and !$_.PSIsContainer
  }
}


Get-SmallFiles -Size 20

##argument  with index 
function Get-Extension {

    $args
  $args.Length
  $args.Count
  foreach($d in $args){
    $d 
  }

  $args[0]
  $args[1]
  $args[2]
  $args[3]
}

Get-Extension 11 22 
#param with help and data type 

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

test   "computer1","computer1","computer1"



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


test3 "1241$"
