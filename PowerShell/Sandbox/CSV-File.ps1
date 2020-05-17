
$location =("Delhi","Gurgaon","Noida")

#single foreach loop 
foreach($loc in $location){

    Write-Host "$loc"
}

#nested forearch loop 
$department = ("HR","IT","OPS","Finance")
foreach($loc in $location){

        foreach($dept in $department){

            Write-Host " $loc -> $dept"
    
        }
}

#three level nesting foreach  loop 
$category = ("Desktop","Laptop")
foreach($loc in $location){

        foreach($dept in $department){

                foreach($cat in $category){

                        Write-Host "$loc -> $dept -> $cat"
                }
        }
}


#########################
####Read CSV Files#######
#########################

Import-Csv "C:\Users\vkumar15\Desktop\Location.csv" | ForEach-Object{

            $loc  = $_.Location 

             Import-Csv "C:\Users\vkumar15\Desktop\Department.csv" | ForEach-Object{
                            
                            $dept = $_.Department  

                             Import-Csv "C:\Users\vkumar15\Desktop\Category.csv" | ForEach-Object{

                                        $cat = $_.System_Category    #process row by row : $_. (current index)

                                        Write-Host "$loc -> $dept -> $cat"
 
                            }
            }
 
}



