("Hello world").CompareTo("Hello" + " " + "world")
$a ="Hello World 1"          
$a.CompareTo("Hello World")

#if match then : 0
#if match then : 1

#compare between two string using Equals function 
("Hello world").Equals("Hello" + " " + "world")

#replace 
("Hello World").Replace("Hello","New") # here 'Hello' is old word and 'New' is new word

$a="Hello World"
$a.Replace("Hello","New")


#find char/word is present or not
("Hello world 123").Contains("ll")


#get position of given char/word
("Hello world").IndexOf("ll")

#get or read data from given index/position 
("Hello world").Substring(2,5)  # from index to no of chars 

#remove char/word
("Hello world").Remove(2,3)


#get count of chars  including space 
$name ="raman sinha"
$name.Length

#break string by given seperator 
$string = 'FirstPart SecondPart'
$a,$b = $string.split(' ') #break by space 


##
$string = 'FirstPart SecondPart'
$string.split('') #break by space 

## convert to upper case 
$s ="raman sinha"
$s.ToUpper()

#convert to lower case
$s ="raman sinha"
$s.ToLower()

if ( $s.Length -gt 8 -and $s.Length -lt 12){

    "password is valid"
}else
{
    "password is invalid"

}


## trim : remove leading or extra space 
$s =" raman  sinha  "
$s.Length

$s = $s.Trim()
$s.Length

#remove from last
$s.TrimEnd()

#remove from start
$s.TrimStart()




## wap to get count of chars in sentence
## wap to get count  of space in a sentence 
# wap to convert string/sentence to proper case 
# example: this is java = This Is Java 






















