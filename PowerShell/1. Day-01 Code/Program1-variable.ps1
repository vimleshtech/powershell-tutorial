$a =111    # here $a is variable and 111 is data (data type is int) 
$a         # show  print value 

$name = "raman sinha &&%^% 111222"    # declare string data 
$name

## correct syntax 
$a =11
$a1 = 333
$a_b =333
$_abcd =111
$_abcd_1 ="abcd"


##incorrect syntax 
#$1a  =111
#$a b =333
#$a+b  =444

## declare variable with particular type 
[int] $a =1122
[long] $a =1122

[bool] $b = 1    # True   
[bool] $b = 0    # False 




### if condition 
#apply tax if sales amount is greater than 1000
$sales = 1200
$tax = 0

if ($sales -gt 1000){
    $tax = $sales * .18   # $sales * 18 /100
}

$total_amt = $sales + $tax 
$total_amt

#################################
#################################
## if else condition 
$sales = 500
$tax = 0

if ($sales -gt 1000){
    $tax = $sales * .18   # $sales * 18 /100
}
else {
    $tax = $sales * .05   
}

$total_amt = $sales + $tax 
$total_amt


#################################
#################################
#if elseif elseif .. else condition 
#show greater no from three input 
$a =33999
$b =88
$c = 899

if($a -gt $b -and $a -gt $c ){

    "a is greater" 
     
}elseif($b -gt $a -and $b -gt $c ){
    
    "b is greater" 

}else{
    
    "c is greater" 
}

#nested if else : if inside if 
#########################
#########################
$a =33999
$b =88
$c = 899

if($a -gt $b ){

    if($a -gt $c){
        "a is greater" 
    }else{
        "c is greater" 
    }
     
}else{        
        if( $b -gt $c ){    
            "b is greater" 
        }else{
           "c is greater" 
        }
}

# switch : case 
###########################
############################
$a =10
switch($a){

    1 {"monday"}
    2 {"tuesday"}
    3 {"wednesday"}
    default {"not match"}
}
#
switch(Read-Host "Select a menu item"){

    1 {"File will be deleted"}
    2 {"File will be displayed"}
    3 {"File is write protected"}

    default {"Invalid entry"}
}

###questions
