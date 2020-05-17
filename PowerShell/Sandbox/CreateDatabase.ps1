$dbname= get-content ( "C:\Users\vkumar15\Desktop\db.txt")

Add-Type -AssemblyName "Microsoft.SqlServer.Smo,Version=11.0.0.0,Culture=neutral,PublicKeyToken=89845dcd8080cc91"

ForEach ( $x in $dbname)
{
    $srv = New-Object Microsoft.SqlServer.Management.Smo.Server “LH7U05CG7300QJQ\DBS92” 
    #$srv.Databases | select name
    #$srv.Databases $x 
    $db = New-Object -TypeName Microsoft.SqlServer.Management.Smo.Database -argumentlist $srv, $x   
    $db.Create()  
    Write-Host "Connection Successful"
 } 