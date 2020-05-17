#1. no argument no return 
function welcome{
    
   Write-Host  "welcome to function world";   

}

#call/invoke the function 
welcome 

#2. no argument with return 
function getData{
    $out = Read-Host "enter data ";
    return $out;
}

#3. Argument with no return
function add-numbers{
    $o = $args[0] + $args[1]   # here $args is inbuilt/system defined variable (array) 
    $o 
}
#call/invoke to function with argument 
add-numbers 100 3

#4. Argument with  return
function sub-numbers{
    $o = $args[0] - $args[1]
    return $o 
}


##example 
function get-max-value{

    $m = [int]$args[0];
    $i =0;

    while($i -lt $args.Length){

        $n = [int] $args[$i]
        if( $n  -gt $m ){
            $m = $n;
        }
        $i=$i+1;
    }

    Write-Host "highest value is $m ";
}
