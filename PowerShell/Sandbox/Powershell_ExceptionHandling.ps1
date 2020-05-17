function Do-Something
{
    #throw "Bad thing happened"
    Write-Error -Message "Houston, we have a problem." -ErrorAction Stop
}

Do-Something -ErrorAction Stop
#
try
{
    Do-Something
}
catch
{
    Write-Output "Something threw an exception"
}

try
{
    Do-Something -ErrorAction Stop
}
catch
{
    Write-Output "Something threw an exception or used Write-Error"
}

